.class final Lrx/d/a$a;
.super Lrx/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/a",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+TS;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/c/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/r",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;+TS;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/o;Lrx/c/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+TS;>;",
            "Lrx/c/r",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    .local p1, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p2, "next":Lrx/c/r;, "Lrx/c/r<-TS;Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;+TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrx/d/a$a;-><init>(Lrx/c/o;Lrx/c/r;Lrx/c/c;)V

    .line 285
    return-void
.end method

.method constructor <init>(Lrx/c/o;Lrx/c/r;Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    .local p1, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p2, "next":Lrx/c/r;, "Lrx/c/r<-TS;Ljava/lang/Long;-Lrx/f<Lrx/e<+TT;>;>;+TS;>;"
    .local p3, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    invoke-direct {p0}, Lrx/d/a;-><init>()V

    .line 278
    iput-object p1, p0, Lrx/d/a$a;->a:Lrx/c/o;

    .line 279
    iput-object p2, p0, Lrx/d/a$a;->b:Lrx/c/r;

    .line 280
    iput-object p3, p0, Lrx/d/a$a;->c:Lrx/c/c;

    .line 281
    return-void
.end method

.method public constructor <init>(Lrx/c/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/r",
            "<TS;",
            "Ljava/lang/Long;",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    .local p1, "nextFunc":Lrx/c/r;, "Lrx/c/r<TS;Ljava/lang/Long;Lrx/f<Lrx/e<+TT;>;>;TS;>;"
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v0, p1, v0}, Lrx/d/a$a;-><init>(Lrx/c/o;Lrx/c/r;Lrx/c/c;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Lrx/c/r;Lrx/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/r",
            "<TS;",
            "Ljava/lang/Long;",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;TS;>;",
            "Lrx/c/c",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    .local p1, "next":Lrx/c/r;, "Lrx/c/r<TS;Ljava/lang/Long;Lrx/f<Lrx/e<+TT;>;>;TS;>;"
    .local p2, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lrx/d/a$a;-><init>(Lrx/c/o;Lrx/c/r;Lrx/c/c;)V

    .line 289
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    iget-object v0, p0, Lrx/d/a$a;->a:Lrx/c/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/d/a$a;->a:Lrx/c/o;

    invoke-interface {v0}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;JLrx/f;)Ljava/lang/Object;
    .locals 2
    .param p2, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;)TS;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p4, "observer":Lrx/f;, "Lrx/f<Lrx/e<+TT;>;>;"
    iget-object v0, p0, Lrx/d/a$a;->b:Lrx/c/r;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1, p4}, Lrx/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lrx/d/a$a;->c:Lrx/c/c;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lrx/d/a$a;->c:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 272
    .local p0, "this":Lrx/d/a$a;, "Lrx/d/a$a<TS;TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lrx/d/a;->a(Lrx/l;)V

    return-void
.end method
