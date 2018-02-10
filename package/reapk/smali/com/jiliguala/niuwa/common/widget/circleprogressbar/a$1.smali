.class Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->invalidateSelf()V

    .line 100
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 105
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
