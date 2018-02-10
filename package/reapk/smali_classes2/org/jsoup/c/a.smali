.class public Lorg/jsoup/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/c/a$1;,
        Lorg/jsoup/c/a$b;,
        Lorg/jsoup/c/a$a;
    }
.end annotation


# instance fields
.field private a:Lorg/jsoup/c/b;


# direct methods
.method public constructor <init>(Lorg/jsoup/c/b;)V
    .locals 0
    .param p1, "whitelist"    # Lorg/jsoup/c/b;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lorg/jsoup/c/a;->a:Lorg/jsoup/c/b;

    .line 33
    return-void
.end method

.method private a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)I
    .locals 3
    .param p1, "source"    # Lorg/jsoup/nodes/f;
    .param p2, "dest"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 113
    new-instance v0, Lorg/jsoup/c/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/jsoup/c/a$a;-><init>(Lorg/jsoup/c/a;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;Lorg/jsoup/c/a$1;)V

    .line 114
    .local v0, "cleaningVisitor":Lorg/jsoup/c/a$a;
    new-instance v1, Lorg/jsoup/select/e;

    invoke-direct {v1, v0}, Lorg/jsoup/select/e;-><init>(Lorg/jsoup/select/f;)V

    .line 115
    .local v1, "traversor":Lorg/jsoup/select/e;
    invoke-virtual {v1, p1}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/h;)V

    .line 116
    invoke-static {v0}, Lorg/jsoup/c/a$a;->a(Lorg/jsoup/c/a$a;)I

    move-result v2

    return v2
.end method

.method static synthetic a(Lorg/jsoup/c/a;Lorg/jsoup/nodes/f;)Lorg/jsoup/c/a$b;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/c/a;
    .param p1, "x1"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/jsoup/c/a;->a(Lorg/jsoup/nodes/f;)Lorg/jsoup/c/a$b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/jsoup/nodes/f;)Lorg/jsoup/c/a$b;
    .locals 10
    .param p1, "sourceEl"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 120
    invoke-virtual {p1}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "sourceTag":Ljava/lang/String;
    new-instance v1, Lorg/jsoup/nodes/b;

    invoke-direct {v1}, Lorg/jsoup/nodes/b;-><init>()V

    .line 122
    .local v1, "destAttrs":Lorg/jsoup/nodes/b;
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-static {v7}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v8

    invoke-virtual {p1}, Lorg/jsoup/nodes/f;->O()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9, v1}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 123
    .local v0, "dest":Lorg/jsoup/nodes/f;
    const/4 v4, 0x0

    .line 125
    .local v4, "numDiscarded":I
    invoke-virtual {p1}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v6

    .line 126
    .local v6, "sourceAttrs":Lorg/jsoup/nodes/b;
    invoke-virtual {v6}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/a;

    .line 127
    .local v5, "sourceAttr":Lorg/jsoup/nodes/a;
    iget-object v8, p0, Lorg/jsoup/c/a;->a:Lorg/jsoup/c/b;

    invoke-virtual {v8, v7, p1, v5}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/a;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)V

    goto :goto_0

    .line 130
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v5    # "sourceAttr":Lorg/jsoup/nodes/a;
    :cond_1
    iget-object v8, p0, Lorg/jsoup/c/a;->a:Lorg/jsoup/c/b;

    invoke-virtual {v8, v7}, Lorg/jsoup/c/b;->b(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v2

    .line 133
    .local v2, "enforcedAttrs":Lorg/jsoup/nodes/b;
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/b;)V

    .line 135
    new-instance v8, Lorg/jsoup/c/a$b;

    invoke-direct {v8, v0, v4}, Lorg/jsoup/c/a$b;-><init>(Lorg/jsoup/nodes/f;I)V

    return-object v8
.end method

.method static synthetic a(Lorg/jsoup/c/a;)Lorg/jsoup/c/b;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/c/a;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/jsoup/c/a;->a:Lorg/jsoup/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;
    .locals 3
    .param p1, "dirtyDocument"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 42
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 45
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/jsoup/c/a;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)I

    .line 48
    :cond_0
    return-object v0
.end method

.method public b(Lorg/jsoup/nodes/Document;)Z
    .locals 4
    .param p1, "dirtyDocument"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 62
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 65
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/jsoup/c/a;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)I

    move-result v1

    .line 66
    .local v1, "numDiscarded":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
