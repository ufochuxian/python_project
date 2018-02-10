.class final Lrx/d/e$b;
.super Lrx/d/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/e",
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

.field private final b:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TS;-",
            "Lrx/f",
            "<-TT;>;+TS;>;"
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
.method public constructor <init>(Lrx/c/o;Lrx/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+TS;>;",
            "Lrx/c/q",
            "<-TS;-",
            "Lrx/f",
            "<-TT;>;+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    .local p1, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p2, "next":Lrx/c/q;, "Lrx/c/q<-TS;-Lrx/f<-TT;>;+TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrx/d/e$b;-><init>(Lrx/c/o;Lrx/c/q;Lrx/c/c;)V

    .line 295
    return-void
.end method

.method constructor <init>(Lrx/c/o;Lrx/c/q;Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+TS;>;",
            "Lrx/c/q",
            "<-TS;-",
            "Lrx/f",
            "<-TT;>;+TS;>;",
            "Lrx/c/c",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    .local p1, "generator":Lrx/c/o;, "Lrx/c/o<+TS;>;"
    .local p2, "next":Lrx/c/q;, "Lrx/c/q<-TS;-Lrx/f<-TT;>;+TS;>;"
    .local p3, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    invoke-direct {p0}, Lrx/d/e;-><init>()V

    .line 288
    iput-object p1, p0, Lrx/d/e$b;->a:Lrx/c/o;

    .line 289
    iput-object p2, p0, Lrx/d/e$b;->b:Lrx/c/q;

    .line 290
    iput-object p3, p0, Lrx/d/e$b;->c:Lrx/c/c;

    .line 291
    return-void
.end method

.method public constructor <init>(Lrx/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<TS;",
            "Lrx/f",
            "<-TT;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    .local p1, "nextFunc":Lrx/c/q;, "Lrx/c/q<TS;Lrx/f<-TT;>;TS;>;"
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0, p1, v0}, Lrx/d/e$b;-><init>(Lrx/c/o;Lrx/c/q;Lrx/c/c;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Lrx/c/q;Lrx/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<TS;",
            "Lrx/f",
            "<-TT;>;TS;>;",
            "Lrx/c/c",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    .local p1, "next":Lrx/c/q;, "Lrx/c/q<TS;Lrx/f<-TT;>;TS;>;"
    .local p2, "onUnsubscribe":Lrx/c/c;, "Lrx/c/c<-TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lrx/d/e$b;-><init>(Lrx/c/o;Lrx/c/q;Lrx/c/c;)V

    .line 299
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
    .line 307
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    iget-object v0, p0, Lrx/d/e$b;->a:Lrx/c/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/d/e$b;->a:Lrx/c/o;

    invoke-interface {v0}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Lrx/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/f",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "observer":Lrx/f;, "Lrx/f<-TT;>;"
    iget-object v0, p0, Lrx/d/e$b;->b:Lrx/c/q;

    invoke-interface {v0, p1, p2}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 317
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lrx/d/e$b;->c:Lrx/c/c;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lrx/d/e$b;->c:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 320
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 282
    .local p0, "this":Lrx/d/e$b;, "Lrx/d/e$b<TS;TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lrx/d/e;->a(Lrx/l;)V

    return-void
.end method
