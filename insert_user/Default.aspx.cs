using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace insert_user
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = $@"insert into users 
                                        (nome, sexo, dataNiver, carteira, fixo, celular, email, endereco)
                                    values 
                                        (@nome, @sexo, @data, @carteira, @fixo, @celular, @email, @endereco)";

                cmd.Parameters.AddWithValue("@nome", txtNome.Text);
                cmd.Parameters.AddWithValue("@sexo", ddlSexo.SelectedValue);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@data", txtData.Text);
                cmd.Parameters.AddWithValue("@carteira", txtCtb.Text);
                cmd.Parameters.AddWithValue("@fixo", txtTelF.Text);
                cmd.Parameters.AddWithValue("@celular", txtTelC.Text);
                cmd.Parameters.AddWithValue("@endereco", txtEnd.Text);


                Conexao.Conectar();

                cmd.ExecuteNonQuery();

                lblResult.CssClass = "text text-success";
                lblResult.Text = "enviado com sucesso";

            }
            catch (Exception ex)
            {
                lblResult.CssClass = "text text-danger";
                lblResult.Text = $"Error: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}