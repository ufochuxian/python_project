.class Lcom/c/a/a/a/d/g$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/a/a/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a/d/g;

.field private b:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/d/g;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/c/a/a/a/d/g$a;->b:Landroid/support/v7/widget/RecyclerView;

    .line 97
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .param p1, "pressedView"    # Landroid/view/View;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    new-instance v0, Lcom/c/a/a/a/d/g$a$1;

    invoke-direct {v0, p0, p1}, Lcom/c/a/a/a/d/g$a$1;-><init>(Lcom/c/a/a/a/d/g$a;Landroid/view/View;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Z)Z

    .line 175
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Landroid/view/View;)Landroid/view/View;

    .line 176
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Z)Z

    .line 80
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v1, p0, Lcom/c/a/a/a/d/g$a;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(FF)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Landroid/view/View;)Landroid/view/View;

    .line 82
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "isChildLongClick":Z
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 185
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 186
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v7}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v5

    check-cast v5, Lcom/c/a/a/a/e;

    .line 187
    .local v5, "vh":Lcom/c/a/a/a/e;
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-virtual {v5}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v7

    invoke-static {v6, v7}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    invoke-virtual {v5}, Lcom/c/a/a/a/e;->b()Ljava/util/HashSet;

    move-result-object v3

    .line 189
    .local v3, "longClickViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/c/a/a/a/e;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 190
    .local v4, "nestViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 191
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 192
    .local v2, "longClickViewId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v7}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "childView":Landroid/view/View;
    iget-object v7, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-virtual {v7, v0, p1}, Lcom/c/a/a/a/d/g;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    if-eqz v4, :cond_4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 195
    const/4 v1, 0x1

    .line 207
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "longClickViewId":Ljava/lang/Integer;
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    .line 209
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v7, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v7, v7, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v9

    iget-object v10, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v10, v10, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v10}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/c;Landroid/view/View;I)V

    .line 210
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v7, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v7}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 211
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setPressed(Z)V

    .line 212
    if-eqz v3, :cond_5

    .line 213
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 214
    .restart local v2    # "longClickViewId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v7}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .restart local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0, v12}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 198
    :cond_4
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6, p1, v0}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 199
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v7, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v7, v7, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v5}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v8

    iget-object v9, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v9, v9, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v9}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v0, v8}, Lcom/c/a/a/a/d/g;->d(Lcom/c/a/a/a/c;Landroid/view/View;I)V

    .line 200
    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 201
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6, v11}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;Z)Z

    .line 202
    const/4 v1, 0x1

    .line 203
    goto :goto_1

    .line 218
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "longClickViewId":Ljava/lang/Integer;
    :cond_5
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6, v11}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;Z)Z

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v0}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v0}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;Z)Z

    .line 92
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 93
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 102
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v6

    .line 105
    :cond_1
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v4

    .line 106
    .local v4, "pressedView":Landroid/view/View;
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v5

    check-cast v5, Lcom/c/a/a/a/e;

    .line 108
    .local v5, "vh":Lcom/c/a/a/a/e;
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-virtual {v5}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v9

    invoke-static {v8, v9}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 111
    invoke-virtual {v5}, Lcom/c/a/a/a/e;->c()Ljava/util/HashSet;

    move-result-object v1

    .line 112
    .local v1, "childClickViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/c/a/a/a/e;->a()Ljava/util/HashSet;

    move-result-object v3

    .line 113
    .local v3, "nestViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 114
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 115
    .local v0, "childClickViewId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, "childView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 117
    iget-object v9, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-virtual {v9, v2, p1}, Lcom/c/a/a/a/d/g;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 118
    if-eqz v3, :cond_3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 121
    :cond_3
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v6, p1, v2}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 122
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 123
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v8, v8, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v5}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v9

    iget-object v10, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v10, v10, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v10}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v8, v2, v9}, Lcom/c/a/a/a/d/g;->c(Lcom/c/a/a/a/c;Landroid/view/View;I)V

    .line 124
    invoke-direct {p0, v2}, Lcom/c/a/a/a/d/g$a;->a(Landroid/view/View;)V

    move v6, v7

    .line 125
    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 132
    .end local v0    # "childClickViewId":Ljava/lang/Integer;
    .end local v2    # "childView":Landroid/view/View;
    :cond_5
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8, p1, v4}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 133
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setPressed(Z)V

    .line 134
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .restart local v0    # "childClickViewId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 136
    .restart local v2    # "childView":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 137
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 140
    .end local v0    # "childClickViewId":Ljava/lang/Integer;
    .end local v2    # "childView":Landroid/view/View;
    :cond_7
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v8, v8, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v5}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v9

    iget-object v10, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v10, v10, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v10}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v8, v4, v9}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/c;Landroid/view/View;I)V

    .line 155
    :goto_3
    invoke-direct {p0, v4}, Lcom/c/a/a/a/d/g$a;->a(Landroid/view/View;)V

    .end local v1    # "childClickViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "nestViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "pressedView":Landroid/view/View;
    .end local v5    # "vh":Lcom/c/a/a/a/e;
    :cond_8
    move v6, v7

    .line 158
    goto/16 :goto_0

    .line 142
    .restart local v1    # "childClickViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3    # "nestViewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v4    # "pressedView":Landroid/view/View;
    .restart local v5    # "vh":Lcom/c/a/a/a/e;
    :cond_9
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8, p1, v4}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/d/g;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 143
    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    invoke-static {v8}, Lcom/c/a/a/a/d/g;->b(Lcom/c/a/a/a/d/g;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setPressed(Z)V

    .line 144
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 145
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 146
    .restart local v0    # "childClickViewId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 147
    .restart local v2    # "childView":Landroid/view/View;
    if-eqz v2, :cond_a

    .line 148
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_4

    .line 153
    .end local v0    # "childClickViewId":Ljava/lang/Integer;
    .end local v2    # "childView":Landroid/view/View;
    :cond_b
    iget-object v6, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v8, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v8, v8, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v5}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v9

    iget-object v10, p0, Lcom/c/a/a/a/d/g$a;->a:Lcom/c/a/a/a/d/g;

    iget-object v10, v10, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v10}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v8, v4, v9}, Lcom/c/a/a/a/d/g;->a(Lcom/c/a/a/a/c;Landroid/view/View;I)V

    goto :goto_3
.end method
