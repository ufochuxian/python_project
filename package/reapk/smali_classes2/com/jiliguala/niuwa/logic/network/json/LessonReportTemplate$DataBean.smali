.class public Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;,
        Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;,
        Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;,
        Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;,
        Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;
    }
.end annotation


# instance fields
.field public clockin:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;

.field public mc:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;

.field public metric:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;

.field public ph:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;

.field public record:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
