.class public final Lrx/internal/operators/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ck$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/h;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lrx/h;Z)V
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .param p2, "delayError"    # Z

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/ck;, "Lrx/internal/operators/ck<TT;>;"
    sget v0, Lrx/internal/util/j;->b:I

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/operators/ck;-><init>(Lrx/h;ZI)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lrx/h;ZI)V
    .locals 0
    .param p1, "scheduler"    # Lrx/h;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/ck;, "Lrx/internal/operators/ck<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/ck;->a:Lrx/h;

    .line 61
    iput-boolean p2, p0, Lrx/internal/operators/ck;->b:Z

    .line 62
    if-lez p3, :cond_0

    .end local p3    # "bufferSize":I
    :goto_0
    iput p3, p0, Lrx/internal/operators/ck;->c:I

    .line 63
    return-void

    .line 62
    .restart local p3    # "bufferSize":I
    :cond_0
    sget p3, Lrx/internal/util/j;->b:I

    goto :goto_0
.end method

.method public static a(I)Lrx/e$b;
    .locals 1
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/e$b",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lrx/internal/operators/ck$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/ck$1;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/ck;, "Lrx/internal/operators/ck<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/ck;->a:Lrx/h;

    instance-of v1, v1, Lrx/internal/schedulers/f;

    if-eqz v1, :cond_1

    .line 76
    .end local p1    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 70
    .restart local p1    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/ck;->a:Lrx/h;

    instance-of v1, v1, Lrx/internal/schedulers/m;

    if-nez v1, :cond_0

    .line 74
    new-instance v0, Lrx/internal/operators/ck$a;

    iget-object v1, p0, Lrx/internal/operators/ck;->a:Lrx/h;

    iget-boolean v2, p0, Lrx/internal/operators/ck;->b:Z

    iget v3, p0, Lrx/internal/operators/ck;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lrx/internal/operators/ck$a;-><init>(Lrx/h;Lrx/l;ZI)V

    .line 75
    .local v0, "parent":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/ck$a;->a()V

    move-object p1, v0

    .line 76
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/ck;, "Lrx/internal/operators/ck<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ck;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
