.class public Lcom/jiliguala/niuwa/logic/network/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/ab;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v1

    invoke-static {v1, p0}, Lokhttp3/ab;->create(Lokhttp3/w;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
