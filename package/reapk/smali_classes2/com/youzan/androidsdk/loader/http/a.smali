.class public final Lcom/youzan/androidsdk/loader/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/loader/http/interfaces/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Landroid/content/Context;

.field private final g:Lcom/youzan/androidsdk/loader/http/interfaces/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p2, "onUI"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->b:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->c:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->d:Ljava/util/List;

    .line 34
    iput-boolean p2, p0, Lcom/youzan/androidsdk/loader/http/a;->e:Z

    .line 35
    iput-object p1, p0, Lcom/youzan/androidsdk/loader/http/a;->f:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/youzan/androidsdk/loader/http/f;

    invoke-direct {v0}, Lcom/youzan/androidsdk/loader/http/f;-><init>()V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->g:Lcom/youzan/androidsdk/loader/http/interfaces/c;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/youzan/androidsdk/loader/http/a;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 44
    new-instance v0, Lcom/youzan/androidsdk/loader/http/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/youzan/androidsdk/loader/http/a;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/youzan/androidsdk/loader/http/a;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p1, "onUI"    # Z

    .prologue
    .line 40
    new-instance v0, Lcom/youzan/androidsdk/loader/http/a;

    invoke-direct {v0, p0, p1}, Lcom/youzan/androidsdk/loader/http/a;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 54
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "stringObj":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 60
    .end local v0    # "stringObj":Ljava/lang/String;
    :cond_1
    return-object p0
.end method


# virtual methods
.method public intercept(Lcom/youzan/androidsdk/loader/http/interfaces/d;)Lcom/youzan/androidsdk/loader/http/interfaces/HttpExecutor;
    .locals 1
    .param p1, "interceptor"    # Lcom/youzan/androidsdk/loader/http/interfaces/d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object p0
.end method

.method public put(Ljava/lang/String;D)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;DZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;DZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "apply"    # Z

    .prologue
    .line 103
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;F)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;FZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;FZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "apply"    # Z

    .prologue
    .line 114
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;IZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;IZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "apply"    # Z

    .prologue
    .line 92
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;JZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;JZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "apply"    # Z

    .prologue
    .line 125
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/File;

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;Ljava/io/File;Z)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Z)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/File;
    .param p3, "apply"    # Z

    .prologue
    .line 147
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;Ljava/lang/String;Z)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "apply"    # Z

    .prologue
    .line 81
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;S)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;SZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;SZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S
    .param p3, "apply"    # Z

    .prologue
    .line 136
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/youzan/androidsdk/loader/http/a;->put(Ljava/lang/String;ZZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;ZZ)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "apply"    # Z

    .prologue
    .line 70
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    return-object p0
.end method

.method public puts(Ljava/util/Map;)Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/youzan/androidsdk/loader/http/interfaces/HttpForms;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "forms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    return-object p0
.end method

.method public with(Lcom/youzan/androidsdk/loader/http/b;)Lcom/youzan/androidsdk/loader/http/interfaces/b;
    .locals 10
    .param p1    # Lcom/youzan/androidsdk/loader/http/b;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MODE",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;)",
            "Lcom/youzan/androidsdk/loader/http/interfaces/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "query":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    invoke-static {p1}, Lcom/youzan/androidsdk/loader/http/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youzan/androidsdk/loader/http/b;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/loader/http/b;->c()I

    move-result v1

    invoke-static {p1}, Lcom/youzan/androidsdk/loader/http/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youzan/androidsdk/loader/http/b;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/loader/http/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youzan/androidsdk/loader/http/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/youzan/androidsdk/loader/http/c;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p1, Lcom/youzan/androidsdk/loader/http/b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/youzan/androidsdk/loader/http/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/a;->g:Lcom/youzan/androidsdk/loader/http/interfaces/c;

    iget-object v1, p0, Lcom/youzan/androidsdk/loader/http/a;->f:Landroid/content/Context;

    .line 167
    invoke-virtual {p1}, Lcom/youzan/androidsdk/loader/http/b;->b()I

    move-result v2

    iget-object v4, p0, Lcom/youzan/androidsdk/loader/http/a;->a:Ljava/util/Map;

    iget-object v5, p0, Lcom/youzan/androidsdk/loader/http/a;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/youzan/androidsdk/loader/http/a;->b:Ljava/util/Map;

    .line 172
    invoke-virtual {p1}, Lcom/youzan/androidsdk/loader/http/b;->a()Ljava/lang/Class;

    move-result-object v7

    iget-boolean v9, p0, Lcom/youzan/androidsdk/loader/http/a;->e:Z

    move-object v8, p1

    .line 165
    invoke-interface/range {v0 .. v9}, Lcom/youzan/androidsdk/loader/http/interfaces/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Lcom/youzan/androidsdk/loader/http/b;Z)V

    .line 175
    return-object p1
.end method
