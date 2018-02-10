.class abstract Lorg/jsoup/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/b/h$1;,
        Lorg/jsoup/b/h$h;,
        Lorg/jsoup/b/h$d;,
        Lorg/jsoup/b/h$a;,
        Lorg/jsoup/b/h$b;,
        Lorg/jsoup/b/h$e;,
        Lorg/jsoup/b/h$f;,
        Lorg/jsoup/b/h$g;,
        Lorg/jsoup/b/h$c;
    }
.end annotation


# instance fields
.field a:Lorg/jsoup/b/h$h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/b/h$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/b/h$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/jsoup/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v1, Lorg/jsoup/b/h$h;->Doctype:Lorg/jsoup/b/h$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lorg/jsoup/b/h$c;
    .locals 0

    .prologue
    .line 228
    check-cast p0, Lorg/jsoup/b/h$c;

    .end local p0    # "this":Lorg/jsoup/b/h;
    return-object p0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v1, Lorg/jsoup/b/h$h;->StartTag:Lorg/jsoup/b/h$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Lorg/jsoup/b/h$f;
    .locals 0

    .prologue
    .line 236
    check-cast p0, Lorg/jsoup/b/h$f;

    .end local p0    # "this":Lorg/jsoup/b/h;
    return-object p0
.end method

.method f()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v1, Lorg/jsoup/b/h$h;->EndTag:Lorg/jsoup/b/h$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Lorg/jsoup/b/h$e;
    .locals 0

    .prologue
    .line 244
    check-cast p0, Lorg/jsoup/b/h$e;

    .end local p0    # "this":Lorg/jsoup/b/h;
    return-object p0
.end method

.method h()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v1, Lorg/jsoup/b/h$h;->Comment:Lorg/jsoup/b/h$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Lorg/jsoup/b/h$b;
    .locals 0

    .prologue
    .line 252
    check-cast p0, Lorg/jsoup/b/h$b;

    .end local p0    # "this":Lorg/jsoup/b/h;
    return-object p0
.end method

.method j()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v1, Lorg/jsoup/b/h$h;->Character:Lorg/jsoup/b/h$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()Lorg/jsoup/b/h$a;
    .locals 0

    .prologue
    .line 260
    check-cast p0, Lorg/jsoup/b/h$a;

    .end local p0    # "this":Lorg/jsoup/b/h;
    return-object p0
.end method

.method l()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v1, Lorg/jsoup/b/h$h;->EOF:Lorg/jsoup/b/h$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
