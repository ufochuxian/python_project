.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a(J)V

    .line 111
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a(III)V

    .line 115
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a(J)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    .line 123
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    .line 124
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a:I

    .line 125
    return-void
.end method

.method private a(J)V
    .locals 3
    .param p1, "timeInMillis"    # J

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->d:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->d:Ljava/util/Calendar;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->d:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->d:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->d:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->d:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a:I

    .line 135
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    .line 145
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    .line 146
    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a:I

    .line 147
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V
    .locals 1
    .param p1, "calendarDay"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .prologue
    .line 138
    iget v0, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    .line 139
    iget v0, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    .line 140
    iget v0, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a:I

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a:I

    .line 141
    return-void
.end method
