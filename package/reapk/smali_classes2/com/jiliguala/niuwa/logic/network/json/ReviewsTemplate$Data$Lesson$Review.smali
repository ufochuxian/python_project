.class public Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Review"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;
    }
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public resource:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;

.field public typ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
