using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RESTWebAPI.Models
{
    public class ApplicationModels
    {
        private static int application_id;
        private string display_name;
        private string secret;

        /// <summary>
        /// Instantiate a new Application obj 
        /// </summary>
        /// <param name="displayName">Application name</param>
        /// <param name="password">Password to authenticate the application, and allow its use</param>
        public ApplicationModels(string displayName, string password)
        {
            try
            {
                application_id += 1;
                display_name = displayName;
                secret = password;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool AuthenticateApp()
        {
            //TODO: authenticate the application by using .NET auth methods and try to get a token from the session
            //TODO: register the token in the database
            //TODO: set the session timeout
        }

        /// <summary>
        /// Register an application in the database
        /// </summary>
        /// <param name="app">An Application object</param>
        public void RegisterApp(ApplicationModels app)
        {
            //TODO: save the application info in the database
        }

        public void RegisterLogMessage(string message)
        {
            //TODO: save the message log in the database
        }

    }
}