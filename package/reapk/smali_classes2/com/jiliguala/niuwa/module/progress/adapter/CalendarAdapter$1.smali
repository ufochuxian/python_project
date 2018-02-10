.class Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->animate(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;Lcom/nineoldandroids/a/a$a;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

.field final synthetic b:I

.field final synthetic c:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;->c:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iput p3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 280
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iget v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;->b:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    .line 285
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 289
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 293
    return-void
.end method
