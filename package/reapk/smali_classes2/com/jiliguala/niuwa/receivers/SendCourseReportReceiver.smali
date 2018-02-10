.class public Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jiliguala.niuwa.service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;->b:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;->b:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;->b:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;->sendCourseReportSuccess()V

    .line 27
    :cond_0
    return-void
.end method
