.class public Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public cat:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;

.field public catid:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public courses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;",
            ">;"
        }
    .end annotation
.end field

.field public page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
