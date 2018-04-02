.class public Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field audio_target:I

.field private context:Landroid/content/Context;

.field private currentDay:Ljava/lang/String;

.field private currentFlag:I

.field private currentMonth:Ljava/lang/String;

.field private currentYear:Ljava/lang/String;

.field private dayNumber:[Ljava/lang/String;

.field private dayNumberArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;",
            ">;"
        }
    .end annotation
.end field

.field private dayOfWeek:I

.field private daysOfMonth:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field end:J

.field private isLeapyear:Z

.field private lastDaysOfMonth:I

.field private olderFocus:Landroid/view/View;

.field private res:Landroid/content/res/Resources;

.field private sc:Lcom/jiliguala/niuwa/common/util/a/a;

.field private schDateTagFlag:[I

.field private sdf:Ljava/text/SimpleDateFormat;

.field private showMonth:Ljava/lang/String;

.field private showYear:Ljava/lang/String;

.field start:J

.field private sysDate:Ljava/lang/String;

.field private sys_day:Ljava/lang/String;

.field private sys_month:Ljava/lang/String;

.field private sys_year:Ljava/lang/String;

.field video_target:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->isLeapyear:Z

    .line 45
    iput v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->daysOfMonth:I

    .line 46
    iput v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    .line 47
    iput v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->lastDaysOfMonth:I

    .line 49
    const/16 v1, 0x2a

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    .line 52
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sc:Lcom/jiliguala/niuwa/common/util/a/a;

    .line 54
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->res:Landroid/content/res/Resources;

    .line 55
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentYear:Ljava/lang/String;

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentMonth:Ljava/lang/String;

    .line 58
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentDay:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sdf:Ljava/text/SimpleDateFormat;

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentFlag:I

    .line 61
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->schDateTagFlag:[I

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->showYear:Ljava/lang/String;

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->showMonth:Ljava/lang/String;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sysDate:Ljava/lang/String;

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_year:Ljava/lang/String;

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_month:Ljava/lang/String;

    .line 71
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_day:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 76
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sysDate:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sysDate:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_year:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sysDate:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_month:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sysDate:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_day:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rs"    # Landroid/content/res/Resources;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->context:Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/jiliguala/niuwa/common/util/a/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/a/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sc:Lcom/jiliguala/niuwa/common/util/a/a;

    .line 124
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->res:Landroid/content/res/Resources;

    .line 125
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentYear:Ljava/lang/String;

    .line 126
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentMonth:Ljava/lang/String;

    .line 127
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentDay:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentYear:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentMonth:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->getCalendar(II)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;IIIII)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rs"    # Landroid/content/res/Resources;
    .param p3, "jumpMonth"    # I
    .param p4, "jumpYear"    # I
    .param p5, "year_c"    # I
    .param p6, "month_c"    # I
    .param p7, "day_c"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->context:Landroid/content/Context;

    .line 86
    new-instance v2, Lcom/jiliguala/niuwa/common/util/a/a;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/common/util/a/a;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sc:Lcom/jiliguala/niuwa/common/util/a/a;

    .line 88
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->res:Landroid/content/res/Resources;

    .line 90
    add-int v1, p5, p4

    .line 91
    .local v1, "stepYear":I
    add-int v0, p6, p3

    .line 92
    .local v0, "stepMonth":I
    if-lez v0, :cond_2

    .line 94
    rem-int/lit8 v2, v0, 0xc

    if-nez v2, :cond_1

    .line 95
    div-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p5

    add-int/lit8 v1, v2, -0x1

    .line 96
    const/16 v0, 0xc

    .line 110
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentYear:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentMonth:Ljava/lang/String;

    .line 113
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentDay:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentYear:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentMonth:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->getCalendar(II)V

    .line 117
    return-void

    .line 98
    :cond_1
    div-int/lit8 v2, v0, 0xc

    add-int v1, p5, v2

    .line 99
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 103
    :cond_2
    add-int/lit8 v2, p5, -0x1

    div-int/lit8 v3, v0, 0xc

    add-int v1, v2, v3

    .line 104
    rem-int/lit8 v2, v0, 0xc

    add-int/lit8 v0, v2, 0xc

    .line 105
    rem-int/lit8 v2, v0, 0xc

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private animate(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;Lcom/nineoldandroids/a/a$a;II)V
    .locals 5
    .param p1, "progressBar"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;
    .param p2, "listener"    # Lcom/nineoldandroids/a/a$a;
    .param p3, "progress"    # I
    .param p4, "duration"    # I

    .prologue
    .line 273
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p3

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 274
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 276
    new-instance v1, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;I)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 295
    if-eqz p2, :cond_0

    .line 296
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 298
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/q$b;)V

    .line 306
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 307
    return-void
.end method

.method private getweek(II)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 321
    const/4 v4, 0x1

    .line 322
    .local v4, "j":I
    const/4 v2, 0x0

    .line 327
    .local v2, "flag":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 332
    iget v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    if-ge v3, v6, :cond_0

    .line 333
    iget v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->lastDaysOfMonth:I

    iget v7, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    sub-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    .line 335
    .local v5, "temp":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 327
    .end local v5    # "temp":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->daysOfMonth:I

    iget v7, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    .line 338
    iget v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    sub-int v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "day":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    sub-int v8, v3, v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 342
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_year:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_month:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sys_day:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    iput v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentFlag:I

    .line 346
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->setShowYear(Ljava/lang/String;)V

    .line 347
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->setShowMonth(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    .end local v1    # "day":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 358
    :cond_3
    const-string v0, ""

    .line 359
    .local v0, "abc":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 364
    :cond_4
    return-void
.end method


# virtual methods
.method public clearFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->olderFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->olderFocus:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->olderFocus:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public getCalendar(II)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sc:Lcom/jiliguala/niuwa/common/util/a/a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/a/a;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->isLeapyear:Z

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sc:Lcom/jiliguala/niuwa/common/util/a/a;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->isLeapyear:Z

    invoke-virtual {v0, v1, p2}, Lcom/jiliguala/niuwa/common/util/a/a;->a(ZI)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->daysOfMonth:I

    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sc:Lcom/jiliguala/niuwa/common/util/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/common/util/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    .line 314
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->sc:Lcom/jiliguala/niuwa/common/util/a/a;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->isLeapyear:Z

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/a/a;->a(ZI)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->lastDaysOfMonth:I

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->getweek(II)V

    .line 317
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDateByClickItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEndPosition()I
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->daysOfMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShowMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->showMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getShowYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->showYear:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPositon()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 170
    if-nez p2, :cond_4

    .line 171
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0b006f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 172
    new-instance v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$1;)V

    .line 173
    .local v6, "holder":Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;
    const v9, 0x7f0905c6

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    .line 174
    const v9, 0x7f090600

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iput-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .line 175
    const v9, 0x7f090073

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iput-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .line 176
    const v9, 0x7f0901a1

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->d:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 177
    const v9, 0x7f0904b7

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->e:Landroid/widget/ImageView;

    .line 178
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    :goto_0
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v9, v9, p1

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v2, v9, v10

    .line 184
    .local v2, "d":Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    .local v7, "sp":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v10, 0x3f99999a    # 1.2f

    invoke-direct {v9, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 191
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setVisibility(I)V

    .line 194
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setVisibility(I)V

    .line 195
    iget v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->daysOfMonth:I

    iget v10, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    add-int/2addr v9, v10

    if-ge p1, v9, :cond_7

    iget v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayOfWeek:I

    if-lt p1, v9, :cond_7

    .line 196
    const v9, 0x7f090553

    invoke-virtual {p2, v9, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 201
    .local v5, "date":I
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v5, v9, :cond_3

    .line 202
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;

    .line 203
    .local v3, "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;

    .line 204
    .local v4, "dailyModel":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    if-eqz v4, :cond_0

    iget v10, v4, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->day:I

    if-ne v10, v5, :cond_0

    .line 206
    if-eqz v3, :cond_3

    .line 207
    iget v0, v3, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->audio:I

    .line 208
    .local v0, "audio":I
    iget v8, v3, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->video:I

    .line 209
    .local v8, "video":I
    iget v1, v3, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->course:I

    .line 212
    .local v1, "course":I
    iget-object v10, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    if-nez v0, :cond_5

    const/4 v9, 0x4

    :goto_1
    invoke-virtual {v10, v9}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setVisibility(I)V

    .line 213
    iget-object v10, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    if-nez v8, :cond_6

    const/4 v9, 0x4

    :goto_2
    invoke-virtual {v10, v9}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setVisibility(I)V

    .line 215
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iget v10, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->audio_target:I

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setMax(I)V

    .line 216
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iget v10, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->video_target:I

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setMax(I)V

    .line 219
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v10, 0x0

    iget v11, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->audio_target:I

    if-le v0, v11, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->audio_target:I

    .end local v0    # "audio":I
    :cond_1
    const/16 v11, 0x3e8

    invoke-direct {p0, v9, v10, v0, v11}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->animate(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;Lcom/nineoldandroids/a/a$a;II)V

    .line 221
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v10, 0x0

    iget v11, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->video_target:I

    if-le v8, v11, :cond_2

    iget v8, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->video_target:I

    .end local v8    # "video":I
    :cond_2
    const/16 v11, 0x3e8

    invoke-direct {p0, v9, v10, v8, v11}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->animate(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;Lcom/nineoldandroids/a/a$a;II)V

    .line 223
    packed-switch v1, :pswitch_data_0

    .line 240
    :goto_3
    iget v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentFlag:I

    if-ne p1, v9, :cond_3

    .line 241
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->detail:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 242
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->context:Landroid/content/Context;

    check-cast v9, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-virtual {v9, v5}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->updateText(I)V

    .line 256
    .end local v1    # "course":I
    .end local v3    # "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .end local v4    # "dailyModel":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .end local v5    # "date":I
    :cond_3
    :goto_4
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->d:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600f5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setBackgroundColor(I)V

    .line 257
    iget v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->currentFlag:I

    if-ne v9, p1, :cond_8

    .line 258
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->e:Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->olderFocus:Landroid/view/View;

    .line 260
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->e:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :goto_5
    return-object p2

    .line 180
    .end local v2    # "d":Ljava/lang/String;
    .end local v6    # "holder":Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;
    .end local v7    # "sp":Landroid/text/SpannableString;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;

    .restart local v6    # "holder":Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;
    goto/16 :goto_0

    .line 212
    .restart local v0    # "audio":I
    .restart local v1    # "course":I
    .restart local v2    # "d":Ljava/lang/String;
    .restart local v3    # "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .restart local v4    # "dailyModel":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .restart local v5    # "date":I
    .restart local v7    # "sp":Landroid/text/SpannableString;
    .restart local v8    # "video":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 213
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 225
    .end local v0    # "audio":I
    .end local v8    # "video":I
    :pswitch_0
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600f5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->d:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 230
    :pswitch_1
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600ac

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->d:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 235
    :pswitch_2
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600ab

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->d:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 251
    .end local v1    # "course":I
    .end local v3    # "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .end local v4    # "dailyModel":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .end local v5    # "date":I
    :cond_7
    const v9, 0x7f090553

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 252
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->c:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setVisibility(I)V

    .line 254
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 262
    :cond_8
    iget-object v9, v6, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter$a;->e:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public matchScheduleDate(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 368
    return-void
.end method

.method public setFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "currentFocus"    # Landroid/view/View;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->olderFocus:Landroid/view/View;

    .line 269
    return-void
.end method

.method public setShowMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "showMonth"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->showMonth:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setShowYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "showYear"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->showYear:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;JJII)V
    .locals 2
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "audio_target"    # I
    .param p7, "video_target"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;",
            ">;JJII)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->dayNumberArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    iput-wide p2, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->start:J

    .line 136
    iput-wide p4, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->end:J

    .line 137
    iput p6, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->audio_target:I

    .line 138
    iput p7, p0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->video_target:I

    .line 139
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_0
    return-void
.end method
