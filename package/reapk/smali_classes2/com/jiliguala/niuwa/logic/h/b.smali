.class public Lcom/jiliguala/niuwa/logic/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/logic/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/h/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/aa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 22
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/aa;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 24
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    if-nez v4, :cond_1

    .line 98
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 31
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const-string v12, "rid"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 32
    .local v7, "rid":Ljava/lang/String;
    const-string v12, "pid"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 33
    .local v6, "pid":Ljava/lang/String;
    const-string v12, "user_id"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 34
    .local v11, "userId":Ljava/lang/String;
    const-string v12, "baby_id"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    .local v0, "babyId":Ljava/lang/String;
    :try_start_0
    const-string v12, "isFromApp"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 42
    .local v2, "isFromApp":Z
    :goto_1
    const-string v12, ""

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 43
    .local v10, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v12, "audio"

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 45
    const-string v12, "jlgl"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    const-string v12, "audio"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    const-string v12, "rid"

    invoke-virtual {v10, v12, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    const-string v12, "user_id"

    invoke-virtual {v10, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    const-string v12, "baby_id"

    invoke-virtual {v10, v12, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    :cond_2
    :goto_2
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 38
    .end local v2    # "isFromApp":Z
    .end local v10    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "isFromApp":Z
    goto :goto_1

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v10    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_3
    const-string v12, "video"

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 52
    const-string v12, "jlgl"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    const-string v12, "video"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    const-string v12, "rid"

    invoke-virtual {v10, v12, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    const-string v12, "user_id"

    invoke-virtual {v10, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    const-string v12, "baby_id"

    invoke-virtual {v10, v12, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 57
    :cond_4
    const-string v12, "forum"

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 59
    const-string v12, "jlgl"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    const-string v12, "forum"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    const-string v12, "pid"

    invoke-virtual {v10, v12, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    const-string v12, "user_id"

    invoke-virtual {v10, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    const-string v12, "baby_id"

    invoke-virtual {v10, v12, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 64
    :cond_5
    const-string v12, "course"

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 68
    const-string v12, "jlgl"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    const-string v12, "lesson"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    const-string v12, "id"

    invoke-virtual {v10, v12, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    const-string v12, "user_id"

    invoke-virtual {v10, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {v10, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 79
    :cond_7
    const/4 v3, 0x0

    .line 80
    .local v3, "jumped":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 81
    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_8

    const-string v13, "story-preview"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 83
    const-string v12, "jlgl"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 84
    const-string v12, "story"

    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    const-string v12, "id"

    invoke-virtual {v10, v12, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    const/4 v3, 0x1

    .line 91
    .end local v8    # "str":Ljava/lang/String;
    :cond_9
    if-nez v3, :cond_2

    .line 93
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 94
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
