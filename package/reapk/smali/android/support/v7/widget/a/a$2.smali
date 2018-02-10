.class Landroid/support/v7/widget/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/a/a;

    .prologue
    .line 303
    iput-object p1, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 306
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v5, Landroid/support/v7/widget/a/a;->M:Landroid/support/v4/view/g;

    invoke-virtual {v5, p2}, Landroid/support/v4/view/g;->a(Landroid/view/MotionEvent;)Z

    .line 310
    invoke-static {p2}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 311
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 312
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/a/a;->C:I

    .line 313
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/a/a;->u:F

    .line 314
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/a/a;->v:F

    .line 315
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {v5}, Landroid/support/v7/widget/a/a;->c()V

    .line 316
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v5, Landroid/support/v7/widget/a/a;->t:Landroid/support/v7/widget/RecyclerView$w;

    if-nez v5, :cond_1

    .line 317
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {v5, p2}, Landroid/support/v7/widget/a/a;->b(Landroid/view/MotionEvent;)Landroid/support/v7/widget/a/a$c;

    move-result-object v1

    .line 318
    .local v1, "animation":Landroid/support/v7/widget/a/a$c;
    if-eqz v1, :cond_1

    .line 319
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v6, v5, Landroid/support/v7/widget/a/a;->u:F

    iget v7, v1, Landroid/support/v7/widget/a/a$c;->l:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/a/a;->u:F

    .line 320
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v6, v5, Landroid/support/v7/widget/a/a;->v:F

    iget v7, v1, Landroid/support/v7/widget/a/a$c;->m:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/a/a;->v:F

    .line 321
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v1, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v5, v6, v3}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;Z)I

    .line 322
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v5, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    iget-object v6, v1, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v5, Landroid/support/v7/widget/a/a;->D:Landroid/support/v7/widget/a/a$a;

    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v1, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/a/a$a;->e(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 325
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v1, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$w;

    iget v7, v1, Landroid/support/v7/widget/a/a$c;->i:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 326
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v6, v6, Landroid/support/v7/widget/a/a;->F:I

    invoke-virtual {v5, p2, v6, v4}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;II)V

    .line 343
    .end local v1    # "animation":Landroid/support/v7/widget/a/a$c;
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v5, Landroid/support/v7/widget/a/a;->J:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 344
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v5, Landroid/support/v7/widget/a/a;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 346
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v5, Landroid/support/v7/widget/a/a;->t:Landroid/support/v7/widget/RecyclerView$w;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 329
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 330
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iput v6, v5, Landroid/support/v7/widget/a/a;->C:I

    .line 331
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    goto :goto_0

    .line 332
    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v5, v5, Landroid/support/v7/widget/a/a;->C:I

    if-eq v5, v6, :cond_1

    .line 335
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v5, v5, Landroid/support/v7/widget/a/a;->C:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 339
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 340
    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {v5, v0, p2, v2}, Landroid/support/v7/widget/a/a;->a(ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 346
    goto :goto_1
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 351
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->M:Landroid/support/v4/view/g;

    invoke-virtual {v6, p2}, Landroid/support/v4/view/g;->a(Landroid/view/MotionEvent;)Z

    .line 356
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->J:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 357
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 359
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v6, v6, Landroid/support/v7/widget/a/a;->C:I

    if-ne v6, v8, :cond_2

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    invoke-static {p2}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 363
    .local v0, "action":I
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v6, v6, Landroid/support/v7/widget/a/a;->C:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 364
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_3

    .line 365
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {v6, v0, p2, v1}, Landroid/support/v7/widget/a/a;->a(ILandroid/view/MotionEvent;I)Z

    .line 367
    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v5, v6, Landroid/support/v7/widget/a/a;->t:Landroid/support/v7/widget/RecyclerView$w;

    .line 368
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$w;
    if-eqz v5, :cond_1

    .line 371
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 389
    :cond_4
    :goto_1
    :pswitch_1
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 390
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iput v8, v6, Landroid/support/v7/widget/a/a;->C:I

    goto :goto_0

    .line 374
    :pswitch_2
    if-ltz v1, :cond_1

    .line 375
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v7, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v7, v7, Landroid/support/v7/widget/a/a;->F:I

    invoke-virtual {v6, p2, v7, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;II)V

    .line 376
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 377
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v7, v7, Landroid/support/v7/widget/a/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 378
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->I:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 379
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_0

    .line 384
    :pswitch_3
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->J:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_4

    .line 385
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 393
    :pswitch_4
    invoke-static {p2}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v4

    .line 394
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 395
    .local v3, "pointerId":I
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v6, v6, Landroid/support/v7/widget/a/a;->C:I

    if-ne v3, v6, :cond_1

    .line 398
    if-nez v4, :cond_5

    const/4 v2, 0x1

    .line 399
    .local v2, "newPointerIndex":I
    :cond_5
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/a/a;->C:I

    .line 400
    iget-object v6, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget-object v7, p0, Landroid/support/v7/widget/a/a$2;->a:Landroid/support/v7/widget/a/a;

    iget v7, v7, Landroid/support/v7/widget/a/a;->F:I

    invoke-virtual {v6, p2, v7, v4}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
