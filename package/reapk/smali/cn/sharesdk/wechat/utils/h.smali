.class public Lcn/sharesdk/wechat/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B[B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 308
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 309
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v2, "checkSumConsistent fail, invalid arguments, \"_mmessage_checksum\" is empty"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 330
    :goto_0
    return v1

    .line 313
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 314
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v2, "checkSumConsistent fail, invalid arguments, checksum is empty"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 318
    :cond_3
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_4

    .line 319
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v2, "checkSumConsistent fail, length is different"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 323
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 324
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_5

    .line 325
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v2, "checkSumConsistent fail, not match"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 323
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_0
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v3, "mMcShCsTr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 194
    const/16 v3, 0x10

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    .line 196
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 197
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 199
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x2

    new-array v5, v2, [C

    move v2, v1

    .line 201
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 202
    aget-byte v6, v4, v1

    .line 203
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v3, v7

    aput-char v7, v5, v2

    .line 204
    add-int/lit8 v2, v2, 0x1

    .line 205
    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v5, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 216
    :cond_2
    return-object v0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 211
    goto :goto_1

    .line 194
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 220
    const-string v0, "content://com.tencent.mm.sdk.plugin.provider/sharedpref"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 221
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "key"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "value"

    aput-object v3, v2, v0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
    const-string v3, "key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 226
    if-nez v1, :cond_0

    move-object v0, v6

    .line 239
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 239
    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "checking signature of wechat client..."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 137
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v1

    move v1, v0

    .line 145
    :goto_0
    if-ge v1, v3, :cond_0

    .line 146
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 147
    const-string v5, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    .line 175
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "pass!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 177
    const/4 v0, 0x1

    .line 180
    :cond_0
    :goto_1
    return v0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 145
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcn/sharesdk/wechat/utils/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "sendReq checkArgs fail"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    const v0, 0x21030001

    .line 59
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weixin://sendreq?appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/wechat/utils/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string v4, "com.tencent.mm"

    const-string v5, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {p1, v4}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/os/Bundle;)V

    .line 66
    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    :cond_2
    const-string v4, "_mmessage_sdkVersion"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v4, "_mmessage_appPackage"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v4, "_mmessage_content"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v4, "_mmessage_checksum"

    invoke-direct {p0, v2, v1, v0}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 73
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    const/high16 v0, 0x8000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v1, "starting activity, packageName=com.tencent.mm, className=com.tencent.mm.plugin.base.stub.WXEntryActivity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 78
    return-void
.end method

.method public a()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    .line 83
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 84
    const-string v3, "com.tencent.mm"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 85
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wechat versionName ==>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 93
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 94
    array-length v0, v4

    new-array v5, v0, [I

    move v0, v1

    .line 95
    :goto_1
    array-length v3, v5

    if-ge v0, v3, :cond_0

    .line 97
    :try_start_1
    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/mob/tools/c/l;->g(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 89
    const-string v0, "0"

    goto :goto_0

    .line 98
    :catch_1
    move-exception v3

    .line 99
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 100
    aput v1, v5, v0

    goto :goto_2

    .line 105
    :cond_0
    array-length v0, v5

    const/4 v3, 0x4

    if-lt v0, v3, :cond_1

    .line 106
    aget v0, v5, v1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    aget v0, v5, v2

    if-nez v0, :cond_1

    aget v0, v5, v7

    if-ne v0, v7, :cond_1

    const/4 v0, 0x3

    aget v0, v5, v0

    const/16 v3, 0x38

    if-gt v0, v3, :cond_1

    move v1, v2

    .line 110
    :cond_1
    return v1
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/i;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 256
    if-nez v1, :cond_0

    .line 304
    :goto_0
    return v0

    .line 260
    :cond_0
    const-string v2, "wx_token_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_1

    const-string v3, "com.tencent.mm.openapi.token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "invalid argument, \"wx_token_key\" is empty or does not equals \"com.tencent.mm.openapi.token\""

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 267
    :cond_2
    const-string v2, "_mmessage_appPackage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "invalid argument, \"_mmessage_appPackage\" is empty"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 273
    :cond_3
    const-string v3, "_mmessage_content"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    const-string v4, "_mmessage_sdkVersion"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 275
    const-string v5, "_mmessage_checksum"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 276
    invoke-direct {p0, v3, v2, v4}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    .line 277
    invoke-direct {p0, v5, v2}, Lcn/sharesdk/wechat/utils/h;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 278
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "checksum fail"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 284
    const-string v2, "_wxapi_command_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 285
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    new-instance v0, Lcn/sharesdk/wechat/utils/b;

    invoke-direct {v0, v1}, Lcn/sharesdk/wechat/utils/b;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/WechatResp;)V

    .line 304
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :pswitch_1
    new-instance v0, Lcn/sharesdk/wechat/utils/e;

    invoke-direct {v0, v1}, Lcn/sharesdk/wechat/utils/e;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/WechatResp;)V

    goto :goto_1

    .line 293
    :pswitch_2
    new-instance v0, Lcn/sharesdk/wechat/utils/c;

    invoke-direct {v0, v1}, Lcn/sharesdk/wechat/utils/c;-><init>(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, v0, Lcn/sharesdk/wechat/utils/c;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_1

    .line 297
    :pswitch_3
    new-instance v0, Lcn/sharesdk/wechat/utils/f;

    invoke-direct {v0, v1}, Lcn/sharesdk/wechat/utils/f;-><init>(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, v0, Lcn/sharesdk/wechat/utils/f;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 26
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/h;->a:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/h;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "register app failed for wechat app signature check failed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 46
    :goto_0
    return v0

    .line 32
    :cond_0
    const-string v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weixin://registerapp?appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    const-string v3, "com.tencent.mm.permission.MM_MESSAGE"

    .line 35
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 36
    const v5, 0x21040001

    .line 38
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v7, "_mmessage_sdkVersion"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const-string v7, "_mmessage_appPackage"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v7, "_mmessage_content"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v7, "_mmessage_checksum"

    invoke-direct {p0, v2, v4, v5}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 43
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending broadcast, intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", perm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 46
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 243
    const-string v0, "_build_info_sdk_int_"

    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :try_start_0
    invoke-static {v0}, Lcom/mob/tools/c/l;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 251
    :goto_0
    const v1, 0x21020001

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 249
    const/4 v0, -0x1

    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method
