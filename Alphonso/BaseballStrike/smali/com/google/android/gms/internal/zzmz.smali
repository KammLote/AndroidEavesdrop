.class public final Lcom/google/android/gms/internal/zzmz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final zzGX:J

.field private final zzGY:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzGZ:Lcom/google/android/gms/internal/zzmz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzmz;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/zzmz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzmz;->zzGX:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmz;->zzGY:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmz;->zzGZ:Lcom/google/android/gms/internal/zzmz;

    return-void
.end method


# virtual methods
.method final getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzmz;->zzGX:J

    return-wide v0
.end method

.method final zzdP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmz;->zzGY:Ljava/lang/String;

    return-object v0
.end method

.method final zzdQ()Lcom/google/android/gms/internal/zzmz;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmz;->zzGZ:Lcom/google/android/gms/internal/zzmz;

    return-object v0
.end method
