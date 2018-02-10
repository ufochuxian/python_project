.class public Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clockin"
.end annotation


# instance fields
.field public continuousprogress:I

.field public notif:Z

.field public status:Ljava/lang/String;

.field public totalprogress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isClockin()Z
    .locals 2

    .prologue
    .line 115
    const-string v0, "done"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
