.class Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/q$b;


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

.field final synthetic b:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$2;->b:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$2;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/q;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/a/q;

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/nineoldandroids/a/q;->w()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 303
    .local v0, "value":F
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$2;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    .line 304
    return-void
.end method
