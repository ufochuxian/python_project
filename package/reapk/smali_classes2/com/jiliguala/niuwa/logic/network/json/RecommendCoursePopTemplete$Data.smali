.class public Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public button:Ljava/lang/String;

.field public endage:Ljava/lang/String;

.field public endts:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public lvl:Ljava/lang/String;

.field public startage:Ljava/lang/String;

.field public startts:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;->this$0:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
