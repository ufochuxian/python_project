.class public final Lokhttp3/x$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lokhttp3/t;

.field private final b:Lokhttp3/ab;


# direct methods
.method private constructor <init>(Lokhttp3/t;Lokhttp3/ab;)V
    .locals 0
    .param p1, "headers"    # Lokhttp3/t;
    .param p2, "body"    # Lokhttp3/ab;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lokhttp3/x$b;->a:Lokhttp3/t;

    .line 265
    iput-object p2, p0, Lokhttp3/x$b;->b:Lokhttp3/ab;

    .line 266
    return-void
.end method

.method static synthetic a(Lokhttp3/x$b;)Lokhttp3/t;
    .locals 1
    .param p0, "x0"    # Lokhttp3/x$b;

    .prologue
    .line 223
    iget-object v0, p0, Lokhttp3/x$b;->a:Lokhttp3/t;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/x$b;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-static {v1, p1}, Lokhttp3/ab;->create(Lokhttp3/w;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lokhttp3/x$b;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/x$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/x$b;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "body"    # Lokhttp3/ab;

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 247
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lokhttp3/x;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    if-eqz p1, :cond_1

    .line 253
    const-string v1, "; filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {v0, p1}, Lokhttp3/x;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Content-Disposition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lokhttp3/t;->a([Ljava/lang/String;)Lokhttp3/t;

    move-result-object v1

    invoke-static {v1, p2}, Lokhttp3/x$b;->a(Lokhttp3/t;Lokhttp3/ab;)Lokhttp3/x$b;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lokhttp3/ab;)Lokhttp3/x$b;
    .locals 1
    .param p0, "body"    # Lokhttp3/ab;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lokhttp3/x$b;->a(Lokhttp3/t;Lokhttp3/ab;)Lokhttp3/x$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lokhttp3/t;Lokhttp3/ab;)Lokhttp3/x$b;
    .locals 2
    .param p0, "headers"    # Lokhttp3/t;
    .param p1, "body"    # Lokhttp3/ab;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    new-instance v0, Lokhttp3/x$b;

    invoke-direct {v0, p0, p1}, Lokhttp3/x$b;-><init>(Lokhttp3/t;Lokhttp3/ab;)V

    return-object v0
.end method

.method static synthetic b(Lokhttp3/x$b;)Lokhttp3/ab;
    .locals 1
    .param p0, "x0"    # Lokhttp3/x$b;

    .prologue
    .line 223
    iget-object v0, p0, Lokhttp3/x$b;->b:Lokhttp3/ab;

    return-object v0
.end method
