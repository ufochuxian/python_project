.class Lnet/simonvt/datepicker/DatePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/numberpicker/NumberPicker$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 165
    iput-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 9
    .param p1, "picker"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 167
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->a(Lnet/simonvt/datepicker/DatePicker;)V

    .line 168
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v2}, Lnet/simonvt/datepicker/DatePicker;->b(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 170
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->d(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 171
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 172
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 173
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 193
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v2}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v3}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    .line 194
    invoke-static {v4}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 193
    invoke-static {v1, v2, v3, v4}, Lnet/simonvt/datepicker/DatePicker;->a(Lnet/simonvt/datepicker/DatePicker;III)V

    .line 195
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->g(Lnet/simonvt/datepicker/DatePicker;)V

    .line 196
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->h(Lnet/simonvt/datepicker/DatePicker;)V

    .line 197
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->i(Lnet/simonvt/datepicker/DatePicker;)V

    .line 198
    return-void

    .line 174
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 175
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 179
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->e(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 180
    if-ne p2, v8, :cond_3

    if-nez p3, :cond_3

    .line 181
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 182
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v8, :cond_4

    .line 183
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 187
    :cond_5
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->f(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 188
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->a:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 190
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
