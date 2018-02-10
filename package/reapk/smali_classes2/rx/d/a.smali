.class public abstract Lrx/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/d/a$c;,
        Lrx/d/a$b;,
        Lrx/d/a$a;
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

.annotation build Lrx/b/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lrx/d/a;, "Lrx/d/a<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    return-void
.end method

.method public static a(Lrx/c/d;)Lrx/d/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/d",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;>;)",
            "Lrx/d/a",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 217
    .local p0, "next":Lrx/c/d;, "Lrx/c/d<Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;>;"
    new-instance v0, Lrx/d/a$3;

    invoke-direct {v0, p0}, Lrx/d/a$3;-><init>(Lrx/c/d;)V

    .line 224
    .local v0, "nextFunc":Lrx/c/r;, "Lrx/c/r<Ljava/lang/Void;Ljava/lang/Long;Lrx/f<Lrx/e<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/d/a$a;

    invoke-direct {v1, v0}, Lrx/d/a$a;-><init>(Lrx/c/r;)V

    return-object v1
.end method

.method public static a(Lrx/c/d;Lrx/c/b;)Lrx/d/a;
    .locals 3
    .param p1, "onUnsubscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/d",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;>;",
            "Lrx/c/b;",
            ")",
            "Lrx/d/a",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 246
    .local p0, "next":Lrx/c/d;, "Lrx/c/d<Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;>;"
    new-instance v0, Lrx/d/a$4;

    invoke-direct {v0, p0}, Lrx/d/a$4;-><init>(Lrx/c/d;)V

    .line 253
    .local v0, "nextFunc":Lrx/c/r;, "Lrx/c/r<Ljava/lang/Void;Ljava/lang/Long;Lrx/f<Lrx/e<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/d/a$5;

    invoke-direct {v1, p1}, Lrx/d/a$5;-><init>(Lrx/c/b;)V

    .line 258
    .local v1, "wrappedOnUnsubscribe":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Void;>;"
    new-instance v2, Lrx/d/a$a;

    invoke-direct {v2, v0, v1}, Lrx/d/a$a;-><init>(Lrx/c/r;Lrx/c/c;)V

    return-object v2
.end method

.method public static a(Lrx/c/o;Lrx/c/e;)Lrx/d/a;
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
            "Lrx/c/e",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;>;)",
            "Lrx/d/a",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 116
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/e;, "Lrx/c/e<-TS;Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;>;"
    new-instance v0, Lrx/d/a$1;

    invoke-direct {v0, p1}, Lrx/d/a$1;-><init>(Lrx/c/e;)V

    .line 123
    .local v0, "nextFunc":Lrx/c/r;, "Lrx/c/r<TS;Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;TS;>;"
    new-instance v1, Lrx/d/a$a;

    invoke-direct {v1, p0, v0}, Lrx/d/a$a;-><init>(Lrx/c/o;Lrx/c/r;)V

    return-object v1
.end method

.method public static a(Lrx/c/o;Lrx/c/e;Lrx/c/c;)Lrx/d/a;
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
            "Lrx/c/e",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;>;",
            "Lrx/c/c",
            "<-TS;>;)",
            "Lrx/d/a",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 148
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/e;, "Lrx/c/e<-TS;Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;>;"
    .local p2, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    new-instance v0, Lrx/d/a$2;

    invoke-direct {v0, p1}, Lrx/d/a$2;-><init>(Lrx/c/e;)V

    .line 155
    .local v0, "nextFunc":Lrx/c/r;, "Lrx/c/r<TS;Ljava/lang/Long;Lrx/f<Lrx/e<+TT;>;>;TS;>;"
    new-instance v1, Lrx/d/a$a;

    invoke-direct {v1, p0, v0, p2}, Lrx/d/a$a;-><init>(Lrx/c/o;Lrx/c/r;Lrx/c/c;)V

    return-object v1
.end method

.method public static a(Lrx/c/o;Lrx/c/r;)Lrx/d/a;
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
            "Lrx/c/r",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;+TS;>;)",
            "Lrx/d/a",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 198
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/r;, "Lrx/c/r<-TS;Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;+TS;>;"
    new-instance v0, Lrx/d/a$a;

    invoke-direct {v0, p0, p1}, Lrx/d/a$a;-><init>(Lrx/c/o;Lrx/c/r;)V

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/r;Lrx/c/c;)Lrx/d/a;
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
            "Lrx/c/r",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;+TS;>;",
            "Lrx/c/c",
            "<-TS;>;)",
            "Lrx/d/a",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 178
    .local p0, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p1, "next":Lrx/c/r;, "Lrx/c/r<-TS;Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;+TS;>;"
    .local p2, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    new-instance v0, Lrx/d/a$a;

    invoke-direct {v0, p0, p1, p2}, Lrx/d/a$a;-><init>(Lrx/c/o;Lrx/c/r;Lrx/c/c;)V

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

.method protected abstract a(Ljava/lang/Object;JLrx/f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;)TS;"
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
    .line 98
    .local p0, "this":Lrx/d/a;, "Lrx/d/a<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method

.method public final a(Lrx/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lrx/d/a;, "Lrx/d/a<TS;TT;>;"
    .local p1, "actualSubscriber":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lrx/d/a;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 322
    .local v3, "state":Ljava/lang/Object;, "TS;"
    invoke-static {}, Lrx/d/a$c;->K()Lrx/d/a$c;

    move-result-object v4

    .line 324
    .local v4, "subject":Lrx/d/a$c;, "Lrx/d/a$c<Lrx/e<TT;>;>;"
    new-instance v2, Lrx/d/a$b;

    invoke-direct {v2, p0, v3, v4}, Lrx/d/a$b;-><init>(Lrx/d/a;Ljava/lang/Object;Lrx/d/a$c;)V

    .line 326
    .local v2, "outerProducer":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    new-instance v0, Lrx/d/a$6;

    invoke-direct {v0, p0, p1, v2}, Lrx/d/a$6;-><init>(Lrx/d/a;Lrx/l;Lrx/d/a$b;)V

    .line 348
    .local v0, "concatSubscriber":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {v4}, Lrx/d/a$c;->r()Lrx/e;

    move-result-object v5

    new-instance v6, Lrx/d/a$7;

    invoke-direct {v6, p0}, Lrx/d/a$7;-><init>(Lrx/d/a;)V

    invoke-virtual {v5, v6}, Lrx/e;->c(Lrx/c/p;)Lrx/e;

    move-result-object v5

    invoke-virtual {v5, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 355
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 356
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 357
    invoke-virtual {p1, v2}, Lrx/l;->setProducer(Lrx/g;)V

    .line 359
    .end local v0    # "concatSubscriber":Lrx/l;, "Lrx/l<TT;>;"
    .end local v2    # "outerProducer":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    .end local v3    # "state":Ljava/lang/Object;, "TS;"
    .end local v4    # "subject":Lrx/d/a$c;, "Lrx/d/a$c<Lrx/e<TT;>;>;"
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lrx/d/a;, "Lrx/d/a<TS;TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/d/a;->a(Lrx/l;)V

    return-void
.end method
