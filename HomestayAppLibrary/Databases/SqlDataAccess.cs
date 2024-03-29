﻿using System;
using System.Collections.Generic;
using System.Text;
using Dapper;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace HomestayAppLibrary.Databases
{
    public class SqlDataAccess : IDataAccess
    {
        private readonly IConfiguration _config;
        public SqlDataAccess(IConfiguration config)
        {
            _config = config;
        }
        public List<T> LoadData<T, U>(string sqlStatement,
                                     U parameters,
                                     string connectionStringName,
                                     bool isStoredProcedure = false)
        {
            string connectionString = _config.GetConnectionString(connectionStringName);

            CommandType commandType = CommandType.Text;

            if (isStoredProcedure == true)
            {
                commandType = CommandType.StoredProcedure;
            }

            using (IDbConnection connection = new SqlConnection(connectionString))
            {
                List<T> rows = connection.Query<T>(sqlStatement, parameters, commandType: commandType).ToList();
                return rows;

            }
        }

        public void SaveData<T, U>(string sqlStatement,
                                    U parameters,
                                    string connectionStringName,
                                    dynamic options = null)
        {
            string connectionString = _config.GetConnectionString(connectionStringName);

            CommandType commandType = CommandType.Text;

            if (options != null
                && options == true)
            {
                commandType = CommandType.StoredProcedure;
            }

            using (IDbConnection connection = new SqlConnection(connectionString))
            {
                connection.Execute(sqlStatement, parameters, commandType: commandType);

            }
        }


    }
}
