.class public Lorg/jsoup/nodes/Document$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lorg/jsoup/nodes/Entities$EscapeMode;

.field private b:Ljava/nio/charset/Charset;

.field private c:Ljava/nio/charset/CharsetEncoder;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$a;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 222
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Document$a;->b:Ljava/nio/charset/Charset;

    .line 223
    iget-object v0, p0, Lorg/jsoup/nodes/Document$a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Document$a;->c:Ljava/nio/charset/CharsetEncoder;

    .line 224
    iput-boolean v1, p0, Lorg/jsoup/nodes/Document$a;->d:Z

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document$a;->e:Z

    .line 226
    iput v1, p0, Lorg/jsoup/nodes/Document$a;->f:I

    .line 228
    return-void
.end method


# virtual methods
.method public a(I)Lorg/jsoup/nodes/Document$a;
    .locals 1
    .param p1, "indentAmount"    # I

    .prologue
    .line 342
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Z)V

    .line 343
    iput p1, p0, Lorg/jsoup/nodes/Document$a;->f:I

    .line 344
    return-object p0

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lorg/jsoup/nodes/Document$a;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document$a;->a(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$a;

    .line 283
    return-object p0
.end method

.method public a(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$a;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/jsoup/nodes/Document$a;->b:Ljava/nio/charset/Charset;

    .line 272
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Document$a;->c:Ljava/nio/charset/CharsetEncoder;

    .line 273
    return-object p0
.end method

.method public a(Lorg/jsoup/nodes/Entities$EscapeMode;)Lorg/jsoup/nodes/Document$a;
    .locals 0
    .param p1, "escapeMode"    # Lorg/jsoup/nodes/Entities$EscapeMode;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/jsoup/nodes/Document$a;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 249
    return-object p0
.end method

.method public a(Z)Lorg/jsoup/nodes/Document$a;
    .locals 0
    .param p1, "pretty"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document$a;->d:Z

    .line 306
    return-object p0
.end method

.method public a()Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/jsoup/nodes/Document$a;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public b()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/jsoup/nodes/Document$a;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public b(Z)Lorg/jsoup/nodes/Document$a;
    .locals 0
    .param p1, "outlineMode"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document$a;->e:Z

    .line 325
    return-object p0
.end method

.method c()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/jsoup/nodes/Document$a;->c:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$a;->g()Lorg/jsoup/nodes/Document$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$a;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$a;->e:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/jsoup/nodes/Document$a;->f:I

    return v0
.end method

.method public g()Lorg/jsoup/nodes/Document$a;
    .locals 3

    .prologue
    .line 351
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .local v0, "clone":Lorg/jsoup/nodes/Document$a;
    iget-object v2, p0, Lorg/jsoup/nodes/Document$a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document$a;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document$a;

    .line 356
    iget-object v2, p0, Lorg/jsoup/nodes/Document$a;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Entities$EscapeMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v2

    iput-object v2, v0, Lorg/jsoup/nodes/Document$a;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 358
    return-object v0

    .line 352
    .end local v0    # "clone":Lorg/jsoup/nodes/Document$a;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
