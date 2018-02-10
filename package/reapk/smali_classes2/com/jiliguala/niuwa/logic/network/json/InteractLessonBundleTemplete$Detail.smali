.class public Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Detail"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5904779fa630a067L


# instance fields
.field public _id:Ljava/lang/String;

.field public cttl:Ljava/lang/String;

.field public oriprice:Ljava/lang/String;

.field public paid:Z

.field public price:Ljava/lang/String;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;->this$0:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
