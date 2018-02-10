.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/e;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/e;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 261
    return-void
.end method

.method public onResponse(Lokhttp3/e;Lokhttp3/ac;)V
    .locals 12
    .param p1, "call"    # Lokhttp3/e;
    .param p2, "response"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 267
    if-eqz p2, :cond_0

    .line 268
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 269
    const/4 v5, 0x0

    .line 271
    .local v5, "responseStr":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p2}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ad;->bytes()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "responseStr":Ljava/lang/String;
    .local v6, "responseStr":Ljava/lang/String;
    move-object v5, v6

    .line 275
    .end local v6    # "responseStr":Ljava/lang/String;
    .restart local v5    # "responseStr":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 276
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "playback":[Ljava/lang/String;
    new-array v7, v11, [I

    .line 278
    .local v7, "sets":[I
    array-length v8, v3

    if-eq v8, v11, :cond_1

    .line 279
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 280
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    move-result-object v8

    aget v9, v7, v9

    mul-int/lit16 v9, v9, 0x3e8

    aget v10, v7, v10

    mul-int/lit16 v10, v10, 0x3e8

    invoke-interface {v8, v9, v10}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onUpdatePlayProgress(II)V

    .line 302
    .end local v3    # "playback":[Ljava/lang/String;
    .end local v5    # "responseStr":Ljava/lang/String;
    .end local v7    # "sets":[I
    :cond_0
    :goto_1
    return-void

    .line 283
    .restart local v3    # "playback":[Ljava/lang/String;
    .restart local v5    # "responseStr":Ljava/lang/String;
    .restart local v7    # "sets":[I
    :cond_1
    const-string v8, "\\d+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 284
    .local v2, "p":Ljava/util/regex/Pattern;
    aget-object v8, v3, v10

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 285
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 286
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "dur":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v10

    .line 289
    .end local v0    # "dur":Ljava/lang/String;
    :cond_2
    aget-object v8, v3, v9

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 291
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "pos":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v9

    .line 295
    .end local v4    # "pos":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 296
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    move-result-object v8

    aget v9, v7, v9

    mul-int/lit16 v9, v9, 0x3e8

    aget v10, v7, v10

    mul-int/lit16 v10, v10, 0x3e8

    invoke-interface {v8, v9, v10}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onUpdatePlayProgress(II)V

    goto :goto_1

    .line 272
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v3    # "playback":[Ljava/lang/String;
    .end local v7    # "sets":[I
    :catch_0
    move-exception v8

    goto :goto_0
.end method
