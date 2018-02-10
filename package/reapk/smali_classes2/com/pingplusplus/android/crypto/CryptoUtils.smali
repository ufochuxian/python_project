.class public Lcom/pingplusplus/android/crypto/CryptoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesDecrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/pingplusplus/android/crypto/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pingplusplus/android/crypto/a;->a([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static aesEncrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {p1, p0}, Lcom/pingplusplus/android/crypto/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/pingplusplus/android/crypto/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p1, v0}, Lcom/pingplusplus/android/crypto/CryptoUtils;->rsaDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v2, Lcom/pingplusplus/android/crypto/Crypt;

    invoke-direct {v2}, Lcom/pingplusplus/android/crypto/Crypt;-><init>()V

    .line 177
    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/pingplusplus/android/crypto/Crypt;->encryptData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 178
    invoke-static {v1, v0}, Lcom/pingplusplus/android/crypto/CryptoUtils;->aesDecrypt(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    :try_start_0
    new-instance v0, Lcom/pingplusplus/android/crypto/Crypt;

    invoke-direct {v0}, Lcom/pingplusplus/android/crypto/Crypt;-><init>()V

    .line 243
    invoke-virtual {v0, p0, p1}, Lcom/pingplusplus/android/crypto/Crypt;->encryptData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 244
    invoke-static {p2, v0}, Lcom/pingplusplus/android/crypto/CryptoUtils;->aesDecrypt(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0x10

    .line 203
    invoke-static {v1}, Lcom/pingplusplus/android/crypto/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v1}, Lcom/pingplusplus/android/crypto/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    :try_start_0
    new-instance v2, Lcom/pingplusplus/android/crypto/Crypt;

    invoke-direct {v2}, Lcom/pingplusplus/android/crypto/Crypt;-><init>()V

    .line 209
    invoke-virtual {v2, v0, v1}, Lcom/pingplusplus/android/crypto/Crypt;->encryptData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 210
    invoke-static {p0, v3}, Lcom/pingplusplus/android/crypto/CryptoUtils;->aesEncrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/pingplusplus/android/crypto/Crypt;->encryptKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 213
    const-string v2, "data"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v2, "key"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v0, "version"

    const-string v2, "PE_v2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Lcom/pingplusplus/android/crypto/Crypt;

    invoke-direct {v0}, Lcom/pingplusplus/android/crypto/Crypt;-><init>()V

    .line 231
    invoke-virtual {v0, p0, p1}, Lcom/pingplusplus/android/crypto/Crypt;->encryptData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 232
    invoke-static {p2, v0}, Lcom/pingplusplus/android/crypto/CryptoUtils;->aesEncrypt(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAesKey()[B
    .locals 3

    .prologue
    const/16 v1, 0x20

    .line 190
    invoke-static {v1}, Lcom/pingplusplus/android/crypto/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v1}, Lcom/pingplusplus/android/crypto/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v2, Lcom/pingplusplus/android/crypto/Crypt;

    invoke-direct {v2}, Lcom/pingplusplus/android/crypto/Crypt;-><init>()V

    .line 193
    invoke-virtual {v2, v0, v1}, Lcom/pingplusplus/android/crypto/Crypt;->encryptData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 33
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 34
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hashPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 55
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public static rsaDecrypt(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "public or data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    invoke-static {p0}, Lcom/pingplusplus/android/crypto/c;->a(Ljava/io/InputStream;)Ljava/security/PublicKey;

    move-result-object v0

    .line 158
    invoke-static {p1}, Lcom/pingplusplus/android/crypto/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pingplusplus/android/crypto/c;->b([BLjava/security/PublicKey;)[B

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static rsaDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "public or data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/pingplusplus/android/crypto/c;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 139
    invoke-static {p1}, Lcom/pingplusplus/android/crypto/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pingplusplus/android/crypto/c;->b([BLjava/security/PublicKey;)[B

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static rsaEncrypt(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "public or data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    invoke-static {p0}, Lcom/pingplusplus/android/crypto/c;->a(Ljava/io/InputStream;)Ljava/security/PublicKey;

    move-result-object v0

    .line 120
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pingplusplus/android/crypto/c;->a([BLjava/security/PublicKey;)[B

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/pingplusplus/android/crypto/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "public or data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    invoke-static {p0}, Lcom/pingplusplus/android/crypto/c;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 101
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pingplusplus/android/crypto/c;->a([BLjava/security/PublicKey;)[B

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/pingplusplus/android/crypto/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
