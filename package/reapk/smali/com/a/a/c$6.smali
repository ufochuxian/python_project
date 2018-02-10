.class Lcom/a/a/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/c;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/a/a/c;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/a/a/c$6;->b:Lcom/a/a/c;

    iput-object p2, p0, Lcom/a/a/c$6;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 818
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/a/a/c$6;->a:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 824
    .local v0, "copy":Lorg/json/JSONObject;
    new-instance v2, Lcom/a/a/h;

    invoke-direct {v2}, Lcom/a/a/h;-><init>()V

    .line 825
    .local v2, "identify":Lcom/a/a/h;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 826
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 827
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 829
    .local v3, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/h;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/a/a/c;->u()Lcom/a/a/d;

    move-result-object v5

    const-string v6, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v0    # "copy":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "identify":Lcom/a/a/h;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_1
    move-exception v1

    .line 820
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/a/a/c;->u()Lcom/a/a/d;

    move-result-object v5

    const-string v6, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 834
    .restart local v0    # "copy":Lorg/json/JSONObject;
    .restart local v2    # "identify":Lcom/a/a/h;
    .restart local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    iget-object v5, p0, Lcom/a/a/c$6;->b:Lcom/a/a/c;

    invoke-virtual {v5, v2}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    goto :goto_1
.end method
