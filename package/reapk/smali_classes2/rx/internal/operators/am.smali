.class public final Lrx/internal/operators/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/am$b;,
        Lrx/internal/operators/am$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "D1:",
        "Ljava/lang/Object;",
        "D2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT1;>;"
        }
    .end annotation
.end field

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT2;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT1;+",
            "Lrx/e",
            "<TD1;>;>;"
        }
    .end annotation
.end field

.field final d:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT2;+",
            "Lrx/e",
            "<TD2;>;>;"
        }
    .end annotation
.end field

.field final e:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TT1;-",
            "Lrx/e",
            "<TT2;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/c/p",
            "<-TT1;+",
            "Lrx/e",
            "<TD1;>;>;",
            "Lrx/c/p",
            "<-TT2;+",
            "Lrx/e",
            "<TD2;>;>;",
            "Lrx/c/q",
            "<-TT1;-",
            "Lrx/e",
            "<TT2;>;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/am;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "left":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "right":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "leftDuration":Lrx/c/p;, "Lrx/c/p<-TT1;+Lrx/e<TD1;>;>;"
    .local p4, "rightDuration":Lrx/c/p;, "Lrx/c/p<-TT2;+Lrx/e<TD2;>;>;"
    .local p5, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT1;-Lrx/e<TT2;>;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/am;->a:Lrx/e;

    .line 54
    iput-object p2, p0, Lrx/internal/operators/am;->b:Lrx/e;

    .line 55
    iput-object p3, p0, Lrx/internal/operators/am;->c:Lrx/c/p;

    .line 56
    iput-object p4, p0, Lrx/internal/operators/am;->d:Lrx/c/p;

    .line 57
    iput-object p5, p0, Lrx/internal/operators/am;->e:Lrx/c/q;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/am;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/am$a;

    new-instance v1, Lrx/e/g;

    invoke-direct {v1, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/am$a;-><init>(Lrx/internal/operators/am;Lrx/l;)V

    .line 63
    .local v0, "ro":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 64
    invoke-virtual {v0}, Lrx/internal/operators/am$a;->init()V

    .line 65
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/am;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/am;->a(Lrx/l;)V

    return-void
.end method
