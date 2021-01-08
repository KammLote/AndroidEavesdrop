.class public final Lcom/google/android/gms/internal/zzaoq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzang;


# instance fields
.field public zzado:Ljava/lang/String;

.field public zzaiI:D

.field public zzaiJ:I

.field public zzaiK:I

.field public zzaiL:I

.field public zzaiM:I

.field public zzaiN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaoq;->zzaiI:D

    iput v2, p0, Lcom/google/android/gms/internal/zzaoq;->zzaiJ:I

    iput v2, p0, Lcom/google/android/gms/internal/zzaoq;->zzaiK:I

    iput v2, p0, Lcom/google/android/gms/internal/zzaoq;->zzaiL:I

    iput v2, p0, Lcom/google/android/gms/internal/zzaoq;->zzaiM:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoq;->zzaiN:Ljava/util/Map;

    return-void
.end method
