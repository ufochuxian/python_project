.class public Landroid/support/constraint/solver/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:I = 0x1000


# instance fields
.field public a:Landroid/support/constraint/solver/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/k$a",
            "<",
            "Landroid/support/constraint/solver/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/support/constraint/solver/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/k$a",
            "<",
            "Landroid/support/constraint/solver/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/support/constraint/solver/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/k$a",
            "<",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/support/constraint/solver/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/k$a",
            "<",
            "Landroid/support/constraint/solver/SolverVariable$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:[Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/constraint/solver/k$b;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/k$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    .line 26
    new-instance v0, Landroid/support/constraint/solver/k$b;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/k$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/e;->b:Landroid/support/constraint/solver/k$a;

    .line 27
    new-instance v0, Landroid/support/constraint/solver/k$b;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/k$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/e;->c:Landroid/support/constraint/solver/k$a;

    .line 28
    new-instance v0, Landroid/support/constraint/solver/k$b;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/k$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/e;->d:Landroid/support/constraint/solver/k$a;

    .line 30
    const/16 v0, 0x20

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    return-void
.end method
