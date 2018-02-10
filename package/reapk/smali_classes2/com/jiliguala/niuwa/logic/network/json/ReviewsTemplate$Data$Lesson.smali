.class public Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lesson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;
    }
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

.field public status:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
