.class Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;->c:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;->a:I

    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;->c:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;->a:I

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setSelectionFromTop(II)V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;->c:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->requestLayout()V

    .line 99
    return-void
.end method
