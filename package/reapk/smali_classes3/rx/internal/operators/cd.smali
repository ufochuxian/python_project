.class public final Lrx/internal/operators/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cd$d;,
        Lrx/internal/operators/cd$c;,
        Lrx/internal/operators/cd$b;,
        Lrx/internal/operators/cd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Lrx/d/d",
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z

.field final e:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<",
            "Lrx/c/c",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/cd;, "Lrx/internal/operators/cd<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v2

    sget v3, Lrx/internal/util/j;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/cd;-><init>(Lrx/c/p;Lrx/c/p;IZLrx/c/p;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lrx/c/p;Lrx/c/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/cd;, "Lrx/internal/operators/cd<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    sget v3, Lrx/internal/util/j;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/cd;-><init>(Lrx/c/p;Lrx/c/p;IZLrx/c/p;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lrx/c/p;Lrx/c/p;IZLrx/c/p;)V
    .locals 0
    .param p3, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;IZ",
            "Lrx/c/p",
            "<",
            "Lrx/c/c",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/cd;, "Lrx/internal/operators/cd<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p5, "mapFactory":Lrx/c/p;, "Lrx/c/p<Lrx/c/c<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/internal/operators/cd;->a:Lrx/c/p;

    .line 68
    iput-object p2, p0, Lrx/internal/operators/cd;->b:Lrx/c/p;

    .line 69
    iput p3, p0, Lrx/internal/operators/cd;->c:I

    .line 70
    iput-boolean p4, p0, Lrx/internal/operators/cd;->d:Z

    .line 71
    iput-object p5, p0, Lrx/internal/operators/cd;->e:Lrx/c/p;

    .line 72
    return-void
.end method

.method public constructor <init>(Lrx/c/p;Lrx/c/p;Lrx/c/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;",
            "Lrx/c/p",
            "<",
            "Lrx/c/c",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/cd;, "Lrx/internal/operators/cd<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/c/p;, "Lrx/c/p<Lrx/c/c<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    sget v3, Lrx/internal/util/j;->b:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/cd;-><init>(Lrx/c/p;Lrx/c/p;IZLrx/c/p;)V

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/d/d",
            "<TK;TV;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/cd;, "Lrx/internal/operators/cd<TT;TK;TV;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/d/d<TK;TV;>;>;"
    :try_start_0
    new-instance v0, Lrx/internal/operators/cd$b;

    iget-object v2, p0, Lrx/internal/operators/cd;->a:Lrx/c/p;

    iget-object v3, p0, Lrx/internal/operators/cd;->b:Lrx/c/p;

    iget v4, p0, Lrx/internal/operators/cd;->c:I

    iget-boolean v5, p0, Lrx/internal/operators/cd;->d:Z

    iget-object v6, p0, Lrx/internal/operators/cd;->e:Lrx/c/p;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/cd$b;-><init>(Lrx/l;Lrx/c/p;Lrx/c/p;IZLrx/c/p;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "parent":Lrx/internal/operators/cd$b;, "Lrx/internal/operators/cd$b<TT;TK;TV;>;"
    new-instance v1, Lrx/internal/operators/cd$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/cd$1;-><init>(Lrx/internal/operators/cd;Lrx/internal/operators/cd$b;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 94
    iget-object v1, v0, Lrx/internal/operators/cd$b;->h:Lrx/internal/operators/cd$a;

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 96
    .end local v0    # "parent":Lrx/internal/operators/cd$b;, "Lrx/internal/operators/cd$b<TT;TK;TV;>;"
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v7

    .line 81
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 82
    invoke-static {}, Lrx/e/h;->a()Lrx/l;

    move-result-object v8

    .line 83
    .local v8, "parent2":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-virtual {v8}, Lrx/l;->unsubscribe()V

    move-object v0, v8

    .line 84
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/cd;, "Lrx/internal/operators/cd<TT;TK;TV;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cd;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
