.class public Lcom/unity3d/ads/android/UnityAdsUtils;
.super Ljava/lang/Object;
.source "UnityAdsUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final DEBUG_DN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsUtils;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "input"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 85
    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v8

    .line 87
    :cond_1
    const/4 v4, 0x0

    .line 89
    .local v4, "m":Ljava/security/MessageDigest;
    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 94
    :goto_1
    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 97
    .local v7, "strData":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 98
    .local v3, "length":I
    invoke-virtual {v4, v7, v9, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 99
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 101
    .local v6, "p_md5Data":[B
    const-string v5, ""

    .line 102
    .local v5, "mOutput":Ljava/lang/String;
    array-length v10, v6

    move v8, v9

    :goto_2
    if-ge v8, v10, :cond_3

    aget-byte v0, v6, v8

    .line 103
    .local v0, "aP_md5Data":B
    and-int/lit16 v1, v0, 0xff

    .line 105
    .local v1, "b":I
    const/16 v9, 0xf

    if-gt v1, v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 90
    .end local v0    # "aP_md5Data":B
    .end local v1    # "b":I
    .end local v3    # "length":I
    .end local v5    # "mOutput":Ljava/lang/String;
    .end local v6    # "p_md5Data":[B
    .end local v7    # "strData":[B
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "length":I
    .restart local v5    # "mOutput":Ljava/lang/String;
    .restart local v6    # "p_md5Data":[B
    .restart local v7    # "strData":[B
    :cond_3
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static canUseExternalStorage()Z
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isDebuggable()Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "debuggable":Z
    const/4 v8, 0x0

    .line 43
    .local v8, "problemsWithData":Z
    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    if-eqz v13, :cond_1

    .line 44
    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 45
    .local v7, "pm":Landroid/content/pm/PackageManager;
    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "pkgName":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v7, v6, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 51
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget v13, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v13, :cond_2

    const/4 v3, 0x1

    .line 58
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v8, :cond_0

    .line 60
    const/16 v13, 0x40

    :try_start_1
    invoke-virtual {v7, v6, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 61
    .local v5, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 63
    .local v10, "signatures":[Landroid/content/pm/Signature;
    array-length v13, v10

    :goto_1
    if-ge v12, v13, :cond_0

    aget-object v9, v10, v12

    .line 64
    .local v9, "signature":Landroid/content/pm/Signature;
    const-string v14, "X.509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 65
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 66
    .local v11, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 67
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    sget-object v15, Lcom/unity3d/ads/android/UnityAdsUtils;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v14, v15}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 80
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "debuggable":Z
    .end local v5    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    .end local v11    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_2
    return v3

    .restart local v3    # "debuggable":Z
    :cond_1
    move v3, v12

    .line 47
    goto :goto_2

    .restart local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v3, v12

    .line 51
    goto :goto_0

    .line 53
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 54
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "Could not find name"

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 55
    const/4 v8, 0x1

    goto :goto_0

    .line 63
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "signature":Landroid/content/pm/Signature;
    .restart local v10    # "signatures":[Landroid/content/pm/Signature;
    .restart local v11    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 72
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    .end local v11    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v4

    .line 73
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "Could not find name"

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 75
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v4

    .line 76
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string v12, "Certificate exception"

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static readFile(Ljava/io/File;Z)Ljava/lang/String;
    .locals 7
    .param p0, "fileToRead"    # Ljava/io/File;
    .param p1, "addLineBreaks"    # Z

    .prologue
    const/4 v4, 0x0

    .line 115
    const-string v2, ""

    .line 118
    .local v2, "fileContent":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 129
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 135
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v4, v2

    .line 141
    goto :goto_1

    .line 137
    :catch_1
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem closing reader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 144
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "line":Ljava/lang/String;
    :cond_2
    const-string v5, "File did not exist or couldn\'t be read"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;J)V

    .line 176
    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;J)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 182
    .local v0, "handler":Landroid/os/Handler;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 183
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileToWrite"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 157
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x0

    goto :goto_0
.end method
