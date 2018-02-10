.class public final Lcom/squareup/okhttp/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/squareup/okhttp/v;

.field public final b:Lcom/squareup/okhttp/x;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;)V
    .locals 0
    .param p1, "networkRequest"    # Lcom/squareup/okhttp/v;
    .param p2, "cacheResponse"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/c;->a:Lcom/squareup/okhttp/v;

    .line 42
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/c;->b:Lcom/squareup/okhttp/x;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/v;
    .param p2, "x1"    # Lcom/squareup/okhttp/x;
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/a/c$1;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;)V

    return-void
.end method

.method public static a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/v;)Z
    .locals 3
    .param p0, "response"    # Lcom/squareup/okhttp/x;
    .param p1, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 72
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->o()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->o()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->o()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->o()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->i()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
