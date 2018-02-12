.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1358
    const-string v0, "reason"

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;->a:Ljava/lang/String;

    .line 1359
    const-string v0, "homekey"

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;->b:Ljava/lang/String;

    .line 1360
    const-string v0, "recentapps"

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 1363
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1364
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;->d:Ljava/lang/ref/WeakReference;

    .line 1365
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1370
    return-void
.end method
