.class final Lcom/google/android/gms/internal/zzcht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzbtD:Ljava/lang/Object;

.field private synthetic zzbth:Ljava/lang/String;

.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchk;

.field private synthetic zzbty:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcht;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcht;->zzbth:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcht;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcht;->zzbtD:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcht;->zzbty:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcht;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcht;->zzbth:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcht;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcht;->zzbtD:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcht;->zzbty:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzchk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
