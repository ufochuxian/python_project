.class Lcom/alibaba/mtl/appmonitor/a$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a$13;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mtl/appmonitor/a$13;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/a$13;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a$13$1;->a:Lcom/alibaba/mtl/appmonitor/a$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1212
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->h()V

    .line 1213
    return-void
.end method
