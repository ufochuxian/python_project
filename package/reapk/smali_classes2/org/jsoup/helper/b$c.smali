.class public Lorg/jsoup/helper/b$c;
.super Lorg/jsoup/helper/b$a;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/b$a",
        "<",
        "Lorg/jsoup/Connection$c;",
        ">;",
        "Lorg/jsoup/Connection$c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/Connection$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Lorg/jsoup/b/f;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/b$a;-><init>(Lorg/jsoup/helper/b$1;)V

    .line 318
    iput-boolean v1, p0, Lorg/jsoup/helper/b$c;->i:Z

    .line 319
    iput-boolean v1, p0, Lorg/jsoup/helper/b$c;->j:Z

    .line 323
    const/16 v0, 0xbb8

    iput v0, p0, Lorg/jsoup/helper/b$c;->e:I

    .line 324
    const/high16 v0, 0x100000

    iput v0, p0, Lorg/jsoup/helper/b$c;->f:I

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/helper/b$c;->g:Z

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/b$c;->h:Ljava/util/Collection;

    .line 327
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/b$c;->b:Lorg/jsoup/Connection$Method;

    .line 328
    iget-object v0, p0, Lorg/jsoup/helper/b$c;->c:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {}, Lorg/jsoup/b/f;->d()Lorg/jsoup/b/f;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/b$c;->k:Lorg/jsoup/b/f;

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/b$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/helper/b$1;

    .prologue
    .line 313
    invoke-direct {p0}, Lorg/jsoup/helper/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/net/URL;
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)Lorg/jsoup/Connection$c;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$c;->c(I)Lorg/jsoup/helper/b$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/jsoup/Connection$b;)Lorg/jsoup/Connection$c;
    .locals 1
    .param p1, "x0"    # Lorg/jsoup/Connection$b;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$c;->b(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/b$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/jsoup/b/f;)Lorg/jsoup/Connection$c;
    .locals 1
    .param p1, "x0"    # Lorg/jsoup/b/f;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$c;->b(Lorg/jsoup/b/f;)Lorg/jsoup/helper/b$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lorg/jsoup/Connection$c;
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lorg/jsoup/helper/b$c;->g:Z

    .line 358
    return-object p0
.end method

.method public bridge synthetic b()Lorg/jsoup/Connection$Method;
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->b()Lorg/jsoup/Connection$Method;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lorg/jsoup/Connection$c;
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    .line 347
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 348
    iput p1, p0, Lorg/jsoup/helper/b$c;->f:I

    .line 349
    return-object p0

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Lorg/jsoup/Connection$c;
    .locals 0
    .param p1, "ignoreHttpErrors"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lorg/jsoup/helper/b$c;->i:Z

    .line 367
    return-object p0
.end method

.method public b(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/b$c;
    .locals 1
    .param p1, "keyval"    # Lorg/jsoup/Connection$b;

    .prologue
    .line 380
    const-string v0, "Key val must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/jsoup/helper/b$c;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 382
    return-object p0
.end method

.method public b(Lorg/jsoup/b/f;)Lorg/jsoup/helper/b$c;
    .locals 0
    .param p1, "parser"    # Lorg/jsoup/b/f;

    .prologue
    .line 390
    iput-object p1, p0, Lorg/jsoup/helper/b$c;->k:Lorg/jsoup/b/f;

    .line 391
    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lorg/jsoup/Connection$c;
    .locals 0
    .param p1, "ignoreContentType"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lorg/jsoup/helper/b$c;->j:Z

    .line 376
    return-object p0
.end method

.method public c(I)Lorg/jsoup/helper/b$c;
    .locals 2
    .param p1, "millis"    # I

    .prologue
    .line 337
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Timeout milliseconds must be 0 (infinite) or greater"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 338
    iput p1, p0, Lorg/jsoup/helper/b$c;->e:I

    .line 339
    return-object p0

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/jsoup/helper/b$c;->e:I

    return v0
.end method

.method public bridge synthetic e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lorg/jsoup/helper/b$c;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/jsoup/helper/b$c;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lorg/jsoup/helper/b$c;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/jsoup/helper/b$c;->j:Z

    return v0
.end method

.method public j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/Connection$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lorg/jsoup/helper/b$c;->h:Ljava/util/Collection;

    return-object v0
.end method

.method public k()Lorg/jsoup/b/f;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/jsoup/helper/b$c;->k:Lorg/jsoup/b/f;

    return-object v0
.end method
