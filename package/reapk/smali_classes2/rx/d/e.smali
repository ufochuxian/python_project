.class public abstract Lrx/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/d/e$a;,
        Lrx/d/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    return-void
.end method

.method public static a(Lrx/c/c;)Lrx/d/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<-",
            "Lrx/f",
            "<-TT;>;>;)",
            "Lrx/d/e",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 228
    .local p0, "next":Lrx/c/c;, "Lrx/c/c<-Lrx/f<-TT;>;>;"
    new-instance v0, Lrx/d/e$3;

    invoke-direct {v0, p0}, Lrx/d/e$3;-><init>(Lrx/c/c;)V

    .line 235
    .local v0, "nextFunc":Lrx/c/q;, "Lrx/c/q<Ljava/lang/Void;Lrx/f<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/d/e$b;

    invoke-direct {v1, v0}, Lrx/d/e$b;-><init>(Lrx/c/q;)V

    return-object v1
.end method

.method public static a(Lrx/c/c;Lrx/c/b;)Lrx/d/e;
    .locals 3
    .param p1, "onUnsubscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<-",
            "Lrx/f",
            "<-TT;>;>;",
            "Lrx/c/b;",
            ")",
            "Lrx/d/e",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 257
    .local p0, "next":Lrx/c/c;, "Lrx/c/c<-Lrx/f<-TT;>;>;"
    new-instance v0, Lrx/d/e$4;

    invoke-direct {v0, p0}, Lrx/d/e$4;-><init>(Lrx/c/c;)V

    .line 264
    .local v0, "nextFunc":Lrx/c/q;, "Lrx/c/q<Ljava/lang/Void;Lrx/f<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/d/e$5;

    invoke-direct {v1, p1}, Lrx/d/e$5;-><init>(Lrx/c/b;)V

    .line 269
    .local v1, "wrappedOnUnsubscribe":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Void;>;"
    new-instance v2, Lrx/d/e$b;

    invoke-direct {v2, v0, v1}, Lrx/d/e$b;-><init>(Lrx/c/q;Lrx/c/c;)V

    return-object v2
.end method

.method public static a(Lrx/c/o;Lrx/c/d;)Lrx/d/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+TS;>;",
            "Lrx/c/d",
            "<-TS;-",
            "Lrx/f",
            "<-TT;>;>;)",
            "Lrx/d/e",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 127
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/d;, "Lrx/c/d<-TS;-Lrx/f<-TT;>;>;"
    new-instance v0, Lrx/d/e$1;

    invoke-direct {v0, p1}, Lrx/d/e$1;-><init>(Lrx/c/d;)V

    .line 134
    .local v0, "nextFunc":Lrx/c/q;, "Lrx/c/q<TS;-Lrx/f<-TT;>;TS;>;"
    new-instance v1, Lrx/d/e$b;

    invoke-direct {v1, p0, v0}, Lrx/d/e$b;-><init>(Lrx/c/o;Lrx/c/q;)V

    return-object v1
.end method

.method public static a(Lrx/c/o;Lrx/c/d;Lrx/c/c;)Lrx/d/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+TS;>;",
            "Lrx/c/d",
            "<-TS;-",
            "Lrx/f",
            "<-TT;>;>;",
            "Lrx/c/c",
            "<-TS;>;)",
            "Lrx/d/e",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 159
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/d;, "Lrx/c/d<-TS;-Lrx/f<-TT;>;>;"
    .local p2, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    new-instance v0, Lrx/d/e$2;

    invoke-direct {v0, p1}, Lrx/d/e$2;-><init>(Lrx/c/d;)V

    .line 166
    .local v0, "nextFunc":Lrx/c/q;, "Lrx/c/q<TS;Lrx/f<-TT;>;TS;>;"
    new-instance v1, Lrx/d/e$b;

    invoke-direct {v1, p0, v0, p2}, Lrx/d/e$b;-><init>(Lrx/c/o;Lrx/c/q;Lrx/c/c;)V

    return-object v1
.end method

.method public static a(Lrx/c/o;Lrx/c/q;)Lrx/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+TS;>;",
            "Lrx/c/q",
            "<-TS;-",
            "Lrx/f",
            "<-TT;>;+TS;>;)",
            "Lrx/d/e",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 209
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/q;, "Lrx/c/q<-TS;-Lrx/f<-TT;>;+TS;>;"
    new-instance v0, Lrx/d/e$b;

    invoke-direct {v0, p0, p1}, Lrx/d/e$b;-><init>(Lrx/c/o;Lrx/c/q;)V

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/q;Lrx/c/c;)Lrx/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+TS;>;",
            "Lrx/c/q",
            "<-TS;-",
            "Lrx/f",
            "<-TT;>;+TS;>;",
            "Lrx/c/c",
            "<-TS;>;)",
            "Lrx/d/e",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 189
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/q;, "Lrx/c/q<-TS;-Lrx/f<-TT;>;+TS;>;"
    .local p2, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    new-instance v0, Lrx/d/e$b;

    invoke-direct {v0, p0, p1, p2}, Lrx/d/e$b;-><init>(Lrx/c/o;Lrx/c/q;Lrx/c/c;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Lrx/f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/f",
            "<-TT;>;)TS;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method

.method public final a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lrx/d/e;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .local v2, "state":Ljava/lang/Object;, "TS;"
    new-instance v1, Lrx/d/e$a;

    invoke-direct {v1, p1, p0, v2}, Lrx/d/e$a;-><init>(Lrx/l;Lrx/d/e;Ljava/lang/Object;)V

    .line 61
    .local v1, "p":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 62
    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 63
    .end local v1    # "p":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    .end local v2    # "state":Ljava/lang/Object;, "TS;"
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/d/e;->a(Lrx/l;)V

    return-void
.end method
