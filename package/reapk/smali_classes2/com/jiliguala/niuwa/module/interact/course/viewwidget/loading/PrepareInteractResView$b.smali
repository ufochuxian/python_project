.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "progress"    # J

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->a:Ljava/lang/String;

    .line 869
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->b:Ljava/lang/String;

    .line 870
    iput-wide p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->c:J

    .line 871
    return-void
.end method
