.class Landroid/support/v7/widget/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$w;

.field public b:Landroid/support/v7/widget/RecyclerView$w;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/support/v7/widget/q$a;->a:Landroid/support/v7/widget/RecyclerView$w;

    .line 71
    iput-object p2, p0, Landroid/support/v7/widget/q$a;->b:Landroid/support/v7/widget/RecyclerView$w;

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;IIII)V
    .locals 0
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/q$a;-><init>(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 77
    iput p3, p0, Landroid/support/v7/widget/q$a;->c:I

    .line 78
    iput p4, p0, Landroid/support/v7/widget/q$a;->d:I

    .line 79
    iput p5, p0, Landroid/support/v7/widget/q$a;->e:I

    .line 80
    iput p6, p0, Landroid/support/v7/widget/q$a;->f:I

    .line 81
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/q$a;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/q$a;->b:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/q$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/q$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/q$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/q$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
