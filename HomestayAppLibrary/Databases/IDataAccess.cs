using System.Collections.Generic;

namespace HomestayAppLibrary.Databases
{
    public interface IDataAccess
    {
        List<T> LoadData<T, U>(string sqlStatement,
                               U parameters,
                               string connectionStringName,
                               bool isStoredProcedure = false);
        void SaveData<T, U>(string sqlStatement,
                            U parameters,
                            string connectionStringName,
                            dynamic options = null);
    }
}