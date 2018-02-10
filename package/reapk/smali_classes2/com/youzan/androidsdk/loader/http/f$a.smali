.class Lcom/youzan/androidsdk/loader/http/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youzan/androidsdk/loader/http/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lokhttp3/f;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/youzan/androidsdk/loader/http/interfaces/c;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TMODE",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/youzan/androidsdk/loader/http/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;ZLcom/youzan/androidsdk/loader/http/b;Lcom/youzan/androidsdk/loader/http/interfaces/c;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onUI"    # Z
    .param p5, "engine"    # Lcom/youzan/androidsdk/loader/http/interfaces/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TMODE",
            "L;",
            ">;Z",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;",
            "Lcom/youzan/androidsdk/loader/http/interfaces/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/f$a;, "Lcom/youzan/androidsdk/loader/http/f$a<TMODEL;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TMODEL;>;"
    .local p4, "query":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-boolean p3, p0, Lcom/youzan/androidsdk/loader/http/f$a;->a:Z

    .line 124
    iput-object p2, p0, Lcom/youzan/androidsdk/loader/http/f$a;->c:Ljava/lang/Class;

    .line 125
    iput-object p5, p0, Lcom/youzan/androidsdk/loader/http/f$a;->b:Lcom/youzan/androidsdk/loader/http/interfaces/c;

    .line 126
    iput-object p4, p0, Lcom/youzan/androidsdk/loader/http/f$a;->e:Lcom/youzan/androidsdk/loader/http/b;

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/f$a;->d:Ljava/lang/ref/WeakReference;

    .line 128
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 131
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/f$a;, "Lcom/youzan/androidsdk/loader/http/f$a<TMODEL;>;"
    iget-object v1, p0, Lcom/youzan/androidsdk/loader/http/f$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 132
    .local v0, "context":Landroid/content/Context;
    iget-boolean v1, p0, Lcom/youzan/androidsdk/loader/http/f$a;->a:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Lokhttp3/e;Ljava/io/IOException;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/e;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/f$a;, "Lcom/youzan/androidsdk/loader/http/f$a<TMODEL;>;"
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 138
    .local v5, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/youzan/androidsdk/loader/http/f$a;->e:Lcom/youzan/androidsdk/loader/http/b;

    .line 139
    .local v4, "query":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    const-string v0, "Canceled"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/youzan/androidsdk/loader/http/f$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 140
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f$a;->b:Lcom/youzan/androidsdk/loader/http/interfaces/c;

    new-instance v3, Lcom/youzan/androidsdk/YouzanException;

    invoke-direct {v3, p2}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/youzan/androidsdk/loader/http/interfaces/c;->a(Ljava/lang/String;Ljava/util/Map;Lcom/youzan/androidsdk/YouzanException;Lcom/youzan/androidsdk/loader/http/b;Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/e;Lokhttp3/ac;)V
    .locals 8
    .param p1, "call"    # Lokhttp3/e;
    .param p2, "response"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/f$a;, "Lcom/youzan/androidsdk/loader/http/f$a<TMODEL;>;"
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 152
    .local v5, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/youzan/androidsdk/loader/http/f$a;->e:Lcom/youzan/androidsdk/loader/http/b;

    .line 153
    .local v4, "query":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/youzan/androidsdk/loader/http/f$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f$a;->b:Lcom/youzan/androidsdk/loader/http/interfaces/c;

    invoke-virtual {p2}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ad;->string()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p2}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/t;->d()Ljava/util/Map;

    move-result-object v2

    .line 156
    invoke-virtual {p2}, Lokhttp3/ac;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/youzan/androidsdk/loader/http/f$a;->c:Ljava/lang/Class;

    .line 154
    invoke-interface/range {v0 .. v6}, Lcom/youzan/androidsdk/loader/http/interfaces/c;->a(Ljava/lang/String;Ljava/util/Map;Lcom/youzan/androidsdk/YouzanException;Lcom/youzan/androidsdk/loader/http/b;Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    :cond_0
    return-void

    .line 156
    :cond_1
    new-instance v3, Lcom/youzan/androidsdk/YouzanException;

    invoke-virtual {p2}, Lokhttp3/ac;->c()I

    move-result v6

    invoke-virtual {p2}, Lokhttp3/ac;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/youzan/androidsdk/YouzanException;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
