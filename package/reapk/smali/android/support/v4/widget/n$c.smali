.class Landroid/support/v4/widget/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Rect;

.field private final c:Z

.field private final d:Landroid/support/v4/widget/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/n$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLandroid/support/v4/widget/n$a;)V
    .locals 1
    .param p1, "isLayoutRtl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/widget/n$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Landroid/support/v4/widget/n$c;, "Landroid/support/v4/widget/n$c<TT;>;"
    .local p2, "adapter":Landroid/support/v4/widget/n$a;, "Landroid/support/v4/widget/n$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/n$c;->a:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/n$c;->b:Landroid/graphics/Rect;

    .line 102
    iput-boolean p1, p0, Landroid/support/v4/widget/n$c;->c:Z

    .line 103
    iput-object p2, p0, Landroid/support/v4/widget/n$c;->d:Landroid/support/v4/widget/n$a;

    .line 104
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/widget/n$c;, "Landroid/support/v4/widget/n$c<TT;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    .local p2, "second":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 108
    iget-object v0, p0, Landroid/support/v4/widget/n$c;->a:Landroid/graphics/Rect;

    .line 109
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/v4/widget/n$c;->b:Landroid/graphics/Rect;

    .line 111
    .local v1, "secondRect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/support/v4/widget/n$c;->d:Landroid/support/v4/widget/n$a;

    invoke-interface {v4, p1, v0}, Landroid/support/v4/widget/n$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 112
    iget-object v4, p0, Landroid/support/v4/widget/n$c;->d:Landroid/support/v4/widget/n$a;

    invoke-interface {v4, p2, v1}, Landroid/support/v4/widget/n$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 114
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v3

    .line 116
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_2

    move v3, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_4

    .line 119
    iget-boolean v4, p0, Landroid/support/v4/widget/n$c;->c:Z

    if-eqz v4, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 120
    :cond_4
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_5

    .line 121
    iget-boolean v4, p0, Landroid/support/v4/widget/n$c;->c:Z

    if-nez v4, :cond_0

    move v3, v2

    goto :goto_0

    .line 122
    :cond_5
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_0

    .line 124
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_6

    move v3, v2

    .line 125
    goto :goto_0

    .line 126
    :cond_6
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_8

    .line 127
    iget-boolean v4, p0, Landroid/support/v4/widget/n$c;->c:Z

    if-eqz v4, :cond_7

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_2

    .line 128
    :cond_8
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_9

    .line 129
    iget-boolean v4, p0, Landroid/support/v4/widget/n$c;->c:Z

    if-nez v4, :cond_0

    move v3, v2

    goto :goto_0

    .line 135
    :cond_9
    const/4 v3, 0x0

    goto :goto_0
.end method
