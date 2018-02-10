.class Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$1;->b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$1;->b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$1;->a:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setSelection(I)V

    .line 163
    return-void
.end method
