.class public Landroid/support/constraint/solver/widgets/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/i$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 6
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/i;->e:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z()I

    move-result v4

    iput v4, p0, Landroid/support/constraint/solver/widgets/i;->a:I

    .line 93
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A()I

    move-result v4

    iput v4, p0, Landroid/support/constraint/solver/widgets/i;->b:I

    .line 94
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()I

    move-result v4

    iput v4, p0, Landroid/support/constraint/solver/widgets/i;->c:I

    .line 95
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D()I

    move-result v4

    iput v4, p0, Landroid/support/constraint/solver/widgets/i;->d:I

    .line 96
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y()Ljava/util/ArrayList;

    move-result-object v1

    .line 97
    .local v1, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "anchorsSize":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 98
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 99
    .local v0, "a":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/i;->e:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/constraint/solver/widgets/i$a;

    invoke-direct {v5, v0}, Landroid/support/constraint/solver/widgets/i$a;-><init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "a":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 4
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z()I

    move-result v3

    iput v3, p0, Landroid/support/constraint/solver/widgets/i;->a:I

    .line 110
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A()I

    move-result v3

    iput v3, p0, Landroid/support/constraint/solver/widgets/i;->b:I

    .line 111
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()I

    move-result v3

    iput v3, p0, Landroid/support/constraint/solver/widgets/i;->c:I

    .line 112
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D()I

    move-result v3

    iput v3, p0, Landroid/support/constraint/solver/widgets/i;->d:I

    .line 113
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 114
    .local v1, "connections":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 115
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/i$a;

    .line 116
    .local v0, "connection":Landroid/support/constraint/solver/widgets/i$a;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/i$a;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "connection":Landroid/support/constraint/solver/widgets/i$a;
    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 4
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 126
    iget v3, p0, Landroid/support/constraint/solver/widgets/i;->a:I

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g(I)V

    .line 127
    iget v3, p0, Landroid/support/constraint/solver/widgets/i;->b:I

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    .line 128
    iget v3, p0, Landroid/support/constraint/solver/widgets/i;->c:I

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->m(I)V

    .line 129
    iget v3, p0, Landroid/support/constraint/solver/widgets/i;->d:I

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n(I)V

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mConnectionsSize":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 131
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/i$a;

    .line 132
    .local v0, "connection":Landroid/support/constraint/solver/widgets/i$a;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/i$a;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "connection":Landroid/support/constraint/solver/widgets/i$a;
    :cond_0
    return-void
.end method
