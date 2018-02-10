.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;
.super Landroid/widget/ViewAnimator;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 28
    const/16 v1, 0x16

    .line 30
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->a:J

    invoke-static {v2, v4, v5, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v2, 0x1

    .line 34
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "flags":I
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setDateMillis(J)V
    .locals 1
    .param p1, "dateMillis"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->a:J

    .line 18
    return-void
.end method
