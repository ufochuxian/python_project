.class public final Lokhttp3/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/aa;

.field public final b:Lokhttp3/ac;


# direct methods
.method private constructor <init>(Lokhttp3/aa;Lokhttp3/ac;)V
    .locals 0
    .param p1, "networkRequest"    # Lokhttp3/aa;
    .param p2, "cacheResponse"    # Lokhttp3/ac;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lokhttp3/internal/a/c;->a:Lokhttp3/aa;

    .line 58
    iput-object p2, p0, Lokhttp3/internal/a/c;->b:Lokhttp3/ac;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/aa;
    .param p2, "x1"    # Lokhttp3/ac;
    .param p3, "x2"    # Lokhttp3/internal/a/c$1;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;)V

    return-void
.end method

.method public static a(Lokhttp3/ac;Lokhttp3/aa;)Z
    .locals 3
    .param p0, "response"    # Lokhttp3/ac;
    .param p1, "request"    # Lokhttp3/aa;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lokhttp3/ac;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 85
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lokhttp3/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lokhttp3/ac;->o()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 87
    invoke-virtual {p0}, Lokhttp3/ac;->o()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lokhttp3/ac;->o()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lokhttp3/ac;->o()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/aa;->g()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 65
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
