.class public Lcom/pingplusplus/android/PingppDataCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/PingppDataCollection$a;
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field public appId:Ljava/lang/String;

.field public chIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public channels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;

.field public enterTime:Ljava/lang/Long;

.field public extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public firstChannel:Ljava/lang/String;

.field public gps:Ljava/lang/Object;

.field public ip:Ljava/lang/String;

.field public lastChannel:Ljava/lang/String;

.field public nocard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public quitTime:Ljava/lang/Long;

.field public sdkType:Ljava/lang/Integer;

.field public sdkVersion:Ljava/lang/String;

.field public system:Ljava/lang/String;

.field public systemVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "app_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "enter_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sdk_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sdk_version"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "system_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pingplusplus/android/PingppDataCollection;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "Android"

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->system:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->systemVersion:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "systemVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/PingppDataCollection;->systemVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 62
    const-string v0, "2.1.8"

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->sdkVersion:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/pingplusplus/android/h;->a(Landroid/content/Context;)Lcom/pingplusplus/android/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingplusplus/android/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->deviceId:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->chIds:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->channels:Ljava/util/Map;

    .line 67
    invoke-static {}, Lcom/pingplusplus/android/PingppDataCollection;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->enterTime:Ljava/lang/Long;

    .line 68
    const-string v0, "app_id"

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->appId:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->extra:Ljava/util/Map;

    .line 71
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->extra:Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "SDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :try_start_0
    const-string v0, "com.jianmi.uexpingpp.EUExPingpp"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->extra:Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "AppCan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "com.pingplusplus.apicloud.ModulePingpp"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->extra:Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "APICloud"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "com.justep.cordova.plugin.pingpp.PingppPlugin"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->extra:Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "WeX5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :cond_2
    :goto_2
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    goto :goto_1

    .line 78
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->chIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->firstChannel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 206
    iput-object p1, p0, Lcom/pingplusplus/android/PingppDataCollection;->firstChannel:Ljava/lang/String;

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/pingplusplus/android/PingppDataCollection;->lastChannel:Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/pingplusplus/android/PingppDataCollection;->channels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->channels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/pingplusplus/android/PingppDataCollection;->channels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/pingplusplus/android/PingppDataCollection;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/pingplusplus/android/PingppDataCollection;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/pingplusplus/android/PingppDataCollection;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()J
    .locals 4

    .prologue
    .line 221
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v1, "system"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->system:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "system_version"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->systemVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->sdkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "ip"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->ip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "gps"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->gps:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "sdk_type"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->sdkType:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "enter_time"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->enterTime:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "quit_time"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->quitTime:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "channels"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->channels:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "first_channel"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->firstChannel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "ch_ids"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->chIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "last_channel"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->lastChannel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "nocard"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->nocard:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "extra"

    iget-object v2, p0, Lcom/pingplusplus/android/PingppDataCollection;->extra:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object v0
.end method

.method public a(Lcom/pingplusplus/android/PingppDataCollection$a;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p1, Lcom/pingplusplus/android/PingppDataCollection$a;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->sdkType:Ljava/lang/Integer;

    .line 226
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Lcom/pingplusplus/android/PingppDataCollection;->a(Ljava/lang/String;)V

    .line 176
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/pingplusplus/android/PingppDataCollection;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    const/4 v1, 0x0

    .line 183
    :try_start_1
    const-string v0, "app"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 187
    :goto_1
    if-nez v1, :cond_1

    .line 189
    :try_start_2
    const-string v0, "app"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 195
    :goto_2
    if-eqz v0, :cond_0

    .line 196
    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->appId:Ljava/lang/String;

    .line 198
    :cond_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 191
    :catch_2
    move-exception v0

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/pingplusplus/android/PingppDataCollection;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 8

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/pingplusplus/android/PingppDataCollection;->a()Ljava/util/Map;

    move-result-object v2

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    sget-object v4, Lcom/pingplusplus/android/PingppDataCollection;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v0, v4, v1

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/pingplusplus/android/PingppDataCollection;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->quitTime:Ljava/lang/Long;

    .line 218
    return-void
.end method

.method public sendToServer()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection;->quitTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/pingplusplus/android/PingppDataCollection;->d()V

    .line 100
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-direct {p0}, Lcom/pingplusplus/android/PingppDataCollection;->e()Ljava/lang/String;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    const-string v1, "X-Pingpp-Report-Token"

    invoke-direct {p0}, Lcom/pingplusplus/android/PingppDataCollection;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/pingplusplus/android/PingppDataCollection;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/pingplusplus/android/h;->a()Lcom/pingplusplus/android/h;

    move-result-object v2

    const-string v3, "https://statistics.pingxx.com/report"

    invoke-virtual {v2, v3, v1, v0}, Lcom/pingplusplus/android/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 108
    return-void
.end method
