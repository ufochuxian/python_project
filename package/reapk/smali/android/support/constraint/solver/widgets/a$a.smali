.class Landroid/support/constraint/solver/widgets/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/support/constraint/solver/widgets/a$a;->a:I

    return v0
.end method

.method a(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 155
    iput p1, p0, Landroid/support/constraint/solver/widgets/a$a;->a:I

    .line 156
    iput p2, p0, Landroid/support/constraint/solver/widgets/a$a;->c:I

    .line 157
    iput p3, p0, Landroid/support/constraint/solver/widgets/a$a;->b:I

    .line 158
    iput p4, p0, Landroid/support/constraint/solver/widgets/a$a;->d:I

    .line 159
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/support/constraint/solver/widgets/a$a;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/support/constraint/solver/widgets/a$a;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/support/constraint/solver/widgets/a$a;->d:I

    return v0
.end method
