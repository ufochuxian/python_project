.class abstract Lcom/youzan/androidsdk/basic/web/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "androidJS"

.field private static final b:I = 0x5


# instance fields
.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/d;->c:Ljava/util/HashSet;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "entrance"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/a/d;->d:Ljava/lang/String;

    .line 43
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Js Bridge Entrance Cannot Be Null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 7

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v0, "content":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/youzan/androidsdk/basic/web/a/d;->c:Ljava/util/HashSet;

    if-eqz v3, :cond_2

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "index":I
    iget-object v3, p0, Lcom/youzan/androidsdk/basic/web/a/d;->c:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "item":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 64
    if-nez v1, :cond_1

    const-string v3, "a.%s"

    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const-string v3, " = a.%s"

    goto :goto_1

    .line 69
    .end local v1    # "index":I
    .end local v2    # "item":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private f()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/d;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youzan/androidsdk/basic/web/a/d;->b(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->b()V

    .line 90
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Js Bridge Interfaces Cannot Be Null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Js Bridge Entrance Cannot Be Null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:(function(b){console.log(\"androidJS begin\");var a={queue:[],callback:function(){var d=Array.prototype.slice.call(arguments,0);var c=d.shift();var e=d.shift();this.queue[c].apply(this,d);if(!e){delete this.queue[c]}}};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "=function(){var f=Array.prototype.slice.call(arguments,0);if(f.length<1){throw\"miss method name\"}var e=[];for(var h=1;h<f.length;h++){var c=f[h];var j=typeof c;e[e.length]=j;if(j==\"function\"){var d=a.queue.length;a.queue[d]=c;f[h]=d}}var g=JSON.parse(prompt(JSON.stringify({method:f.shift(),types:e,args:f})));return g.result};Object.getOwnPropertyNames(a).forEach(function(d){var c=a[d];if(typeof c===\"function\"&&d!==\"callback\"){a[d]=function(){return c.apply(a,[d].concat(Array.prototype.slice.call(arguments,0)))}}});b."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "=a;console.log(\"androidJS end\");})(window);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/web/a/d;
    .locals 1
    .param p1, "entrance"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/d;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-object p0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()V
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->g()V

    .line 84
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
