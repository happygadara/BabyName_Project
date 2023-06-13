using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EncryptDecrypt
/// </summary>
public class EncryptDecrypt
{
    //
    // TODO: Add constructor logic here
    //
    public static string Base64Encode(String plaintext)
    {
        var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plaintext);
        return System.Convert.ToBase64String(plainTextBytes);
    }
    public static string Base64Decode(String Base64EncodeData)
    {
        var Base64EncodeBytes = System.Convert.FromBase64String(Base64EncodeData);
        return System.Text.Encoding.UTF8.GetString(Base64EncodeBytes);
    }

}